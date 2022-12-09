package thestrandedfish.simpletour.dao.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import thestrandedfish.simpletour.connection.DBConnect;
import thestrandedfish.simpletour.dao.AccountDAO;
import thestrandedfish.simpletour.model.Account;

public class AccountDAOImplement implements AccountDAO{

	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public void insert(Account account) {
		String sql ="insert into simpletour_master.useraccount(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, createdDate, statusAccount) values(?,?,?,?,?,?,?,?);";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, account.getPhoneAccount());
			ps.setString(2, account.getPasswordAccount());
			ps.setString(3, account.getEmailAccount());
			ps.setString(4, account.getNameAccount());
			ps.setString(5, account.getAvatarAccount());
			ps.setInt(6, account.getRoleAccount());
			ps.setDate(7, account.getCreatedDate());
			ps.setInt(8, account.getStatusAccount());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Account account) {
		String sql ="update simpletour_master.useraccount set passwordAccount = ?, nameAccount = ?, avatarAccount = ?, statusAccount = ? where phoneAccount = ?;";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, account.getPasswordAccount());
			ps.setString(2, account.getNameAccount());
			ps.setString(3, account.getAvatarAccount());
			ps.setInt(4, account.getStatusAccount());
			ps.setString(5, account.getPhoneAccount());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void delete(String phoneAccount) {
		String sql = "delete from simpletour_master.useraccount where phoneAccount = ?;";
		
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, phoneAccount);
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public Account get(String phoneAccount) {
		String sql = "select * from simpletour_master.useraccount where phoneAccount = ?;";
		try
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, phoneAccount);
			rs = ps.executeQuery();
			while (rs.next())
			{
				Account account = new Account();
				account.setPhoneAccount(rs.getString("phoneAccount"));
				account.setPasswordAccount(rs.getString("passwordAccount"));
				account.setEmailAccount(rs.getString("emailAccount"));
				account.setNameAccount(rs.getString("nameAccount"));
				account.setAvatarAccount(rs.getString("avatarAccount"));
				account.setRoleAccount(Integer.parseInt(rs.getString("roleAccount")));
				account.setCreatedDate(rs.getDate("createdDate"));
				account.setStatusAccount(Integer.parseInt(rs.getString("statusAccount")));
				return account;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Account> getAll() {
		// Khai báo List để lưu danh sách Tour
		List<Account> list = new ArrayList<Account>();
		// Khai báo query
		String query = "select * from simpletour_master.useraccount;";
		try
		{
			// Mở kết nối Database
			conn = new DBConnect().getConnection();
			// Truyền query vào PreparedStatement
			ps = conn.prepareStatement(query);
			// Thực thi query
			rs = ps.executeQuery();
			while (rs.next())
			{
				list.add(new Account(rs.getString("phoneAccount"), 
						rs.getString("passwordAccount"),
						rs.getString("emailAccount"),
						rs.getString("nameAccount"),
						rs.getString("avatarAccount"),	
						Integer.parseInt(rs.getString("roleAccount")),
						rs.getDate("createdDate"),
						Integer.parseInt(rs.getString("statusAccount"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Account> search(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkExistEmail(String email) {
		boolean duplicate = false;
		String query = "select * from simpletour_master.useraccount where emailAccount = ?;";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next())
			{
				duplicate = true;
			}
			ps.close();
			conn.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return duplicate;
	}

	@Override
	public boolean checkExistPhone(String phone) {
		boolean duplicate = false;
		String query = "select * from simpletour_master.useraccount where phoneAccount = ?;";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, phone);
			rs = ps.executeQuery();
			if (rs.next())
			{
				duplicate = true;
			}
			ps.close();
			conn.close();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return duplicate;
	}

}
