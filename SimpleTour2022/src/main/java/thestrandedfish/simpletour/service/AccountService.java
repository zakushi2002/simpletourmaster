package thestrandedfish.simpletour.service;


import java.util.List;

import thestrandedfish.simpletour.model.Account;

public interface AccountService {
	void insert(Account account);
	
	void edit(Account account);
	
	void delete(String phoneAccount);
	
	Account get(String phoneAccount);
	
	Account login(String phoneAccount, String passwordAccount);
	
	boolean update(String phone, String password, String name, String avatar, int role, int status);
	
	boolean register(String phone, String password, String email, String name);
	boolean registerAdmin(String phone, String password, String email, String name, String avatar, int role, int status);
	List<Account> getAll();
	
	List<Account> search(String keyword);
	
	boolean checkExistEmail(String email);
	
	boolean checkExistPhone(String phone);
}
