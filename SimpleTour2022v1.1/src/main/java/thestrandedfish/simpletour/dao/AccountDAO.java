package thestrandedfish.simpletour.dao;

import java.util.List;

import thestrandedfish.simpletour.model.Account;

public interface AccountDAO {
	void insert(Account account);
	
	void edit(Account account);
	
	void delete(String phoneAccount);
	
	Account get(String phoneAccount);
		
	List<Account> getAll();
	
	List<Account> search(String keyword);
	
	boolean checkExistEmail(String email);
	
	boolean checkExistPhone(String phone);
}
