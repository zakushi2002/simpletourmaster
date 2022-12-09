package thestrandedfish.simpletour.model;

import java.io.Serializable;
import java.sql.Date;
@SuppressWarnings("serial")
public class Account implements Serializable{
	// Thuộc tính
	private String phoneAccount;
	private String passwordAccount;
	private String emailAccount;
	private String nameAccount;
	private String avatarAccount;
	private int roleAccount;
	private Date createdDate;
	private int statusAccount;
	public Account(String phone, String pass, String email, String name, String avatar, int role, Date createdDate, int status)
	{
		super();
		this.phoneAccount = phone;
		this.passwordAccount = pass;
		this.emailAccount = email;
		this.nameAccount = name;
		this.avatarAccount = avatar;
		this.roleAccount = role;
		this.createdDate = createdDate;
		this.statusAccount = status;
	}
	public Account()
	{
		super();
	}
	public Account(String phone, String pass, String name, String avatar, int role, int status)
	{
		super();
		this.phoneAccount = phone;
		this.passwordAccount = pass;
		this.nameAccount = name;
		this.avatarAccount = avatar;
		this.roleAccount = role;
		this.statusAccount = status;
	}
	public String getPhoneAccount() {
		return phoneAccount;
	}
	public void setPhoneAccount(String phoneAccount) {
		this.phoneAccount = phoneAccount;
	}
	public String getPasswordAccount() {
		return passwordAccount;
	}
	public void setPasswordAccount(String passwordAccount) {
		this.passwordAccount = passwordAccount;
	}
	public String getEmailAccount() {
		return emailAccount;
	}
	public void setEmailAccount(String emailAccount) {
		this.emailAccount = emailAccount;
	}
	public String getNameAccount() {
		return nameAccount;
	}
	public void setNameAccount(String nameAccount) {
		this.nameAccount = nameAccount;
	}
	public String getAvatarAccount() {
		return avatarAccount;
	}
	public void setAvatarAccount(String avatarAccount) {
		this.avatarAccount = avatarAccount;
	}
	public int getRoleAccount() {
		return roleAccount;
	}
	public void setRoleAccount(int roleAccount) {
		this.roleAccount = roleAccount;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	@Override
	public String toString() {
		return "AccountModel [phoneAccount=" + phoneAccount + ", passwordAccount=" + passwordAccount + ", emailAccount="
				+ emailAccount + ", nameAccount=" + nameAccount + ", avatarAccount=" + avatarAccount + ", roleAccount="
				+ roleAccount + ", createdDate=" + createdDate + "]";
	}
	public int getStatusAccount() {
		return statusAccount;
	}
	public void setStatusAccount(int statusAccount) {
		this.statusAccount = statusAccount;
	}
		
}
