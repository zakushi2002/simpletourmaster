package thestrandedfish.simpletour.service.implement;

import java.sql.Date;
import java.util.List;

import thestrandedfish.simpletour.dao.AccountDAO;
import thestrandedfish.simpletour.dao.implement.AccountDAOImplement;
import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.service.AccountService;

public class AccountServiceImplement implements AccountService{
	AccountDAO accountDAO = new AccountDAOImplement();
	// Định nghĩa các chức năng từ AccountService
	@Override
	public void insert(Account account) {
		accountDAO.insert(account);
	}

	@Override
	public void edit(Account newAccount) {
		Account oldAccount = accountDAO.get(newAccount.getPhoneAccount());
		oldAccount.setNameAccount(newAccount.getNameAccount());
		oldAccount.setPasswordAccount(newAccount.getPasswordAccount());
		oldAccount.setEmailAccount(newAccount.getEmailAccount());
		oldAccount.setRoleAccount(newAccount.getRoleAccount());
		oldAccount.setCreatedDate(newAccount.getCreatedDate());
		oldAccount.setStatusAccount(newAccount.getStatusAccount());
		if (newAccount.getAvatarAccount() != null)
		{
			// Delete Old Avatar
			String oldAvatar = oldAccount.getAvatarAccount();
			if (oldAvatar != null)
			{
				oldAccount.setAvatarAccount(null);
			}
			oldAccount.setAvatarAccount(newAccount.getAvatarAccount());
		}
		accountDAO.edit(oldAccount);
	}

	@Override
	public void delete(String phoneAccount) {
		accountDAO.delete(phoneAccount);
	}

	@Override
	public Account get(String phoneAccount) {
		return accountDAO.get(phoneAccount);
	}
	// Đăng nhập
	@Override
	public Account login(String phoneAccount, String passwordAccount) {
		Account account = this.get(phoneAccount);
		if (account != null && passwordAccount.equals(account.getPasswordAccount()))
		{
			return account;
		}
		return null;
	}

	@Override
	public boolean register(String phone, String password, String email, String name) {
		if (accountDAO.checkExistPhone(phone) || accountDAO.checkExistEmail(email))
		{
			return false;
		}
		long millis = System.currentTimeMillis();
		Date createdDate = new Date(millis);
		accountDAO.insert(new Account(phone, password, email, name, null, 0, createdDate, 1));
		return true;
	}
	
	@Override
	public boolean update(String phone, String password, String name, String avatar, int role, int status) {
		if (phone.trim()=="" || password.trim()=="" || name.trim()=="")
		{
			return false;
		}
		accountDAO.edit(new Account(phone, password, name, avatar, role, status));
		return true;
	}

	@Override
	public List<Account> getAll() {
		return accountDAO.getAll();
	}

	@Override
	public List<Account> search(String keyword) {
		return accountDAO.search(keyword);
	}

	@Override
	public boolean checkExistEmail(String email) {
		return accountDAO.checkExistEmail(email);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return accountDAO.checkExistPhone(phone);
	}

	@Override
	public boolean registerAdmin(String phone, String password, String email, String name, String avatar, int role,
			int status) {
		if (accountDAO.checkExistPhone(phone) || accountDAO.checkExistEmail(email))
		{
			return false;
		}
		long millis = System.currentTimeMillis();
		Date createdDate = new Date(millis);
		accountDAO.insert(new Account(phone, password, email, name, avatar, role, createdDate, status));
		return true;
	}
}
