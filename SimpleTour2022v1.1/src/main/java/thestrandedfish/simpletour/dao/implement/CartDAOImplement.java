package thestrandedfish.simpletour.dao.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import thestrandedfish.simpletour.connection.DBConnect;
import thestrandedfish.simpletour.dao.CartDAO;
import thestrandedfish.simpletour.model.Cart;

public class CartDAOImplement implements CartDAO{
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public Cart getCartByID(int idCart) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void insert(Cart cart) {
		String sql ="insert into simpletour_master.cart(phoneAccount, buyDate, totalPay, statusCart) values(?,?,?,?);";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, cart.getAccount().getPhoneAccount());
			ps.setDate(2, cart.getBuyDate());
			ps.setDouble(3, cart.getTotalPay());
			ps.setInt(4, cart.getStatusCart());
			ps.executeUpdate();
			
			//
			String query = "SELECT idCart FROM simpletour_master.cart where phoneAccount = ? and buyDate= ? and totalPay= ? and statusCart =?;";
			Connection conn1 = null;
			PreparedStatement ps1 = null;
			conn1 = new DBConnect().getConnection();
			ps1 = conn1.prepareStatement(query);
			ps1.setString(1, cart.getAccount().getPhoneAccount());
			ps1.setDate(2, cart.getBuyDate());
			ps1.setDouble(3, cart.getTotalPay());
			ps1.setInt(4, cart.getStatusCart());
			rs = ps1.executeQuery();
			System.out.println("Insert");
			while(rs.next())
			{
				cart.setIdCart(rs.getInt(1));
				System.out.println("setIDCART");
			}
			
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	@Override
	public void edit(Cart cart) {
		String query ="update simpletour_master.cart set totalPay = ?, statusCart =? where idCart = ?";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			ps.setDouble(1, cart.getTotalPay());
			ps.setInt(2, cart.getStatusCart());
			ps.setInt(3, cart.getIdCart());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}		
	}

	@Override
	public void delete(Cart cart) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Cart> getAllCartOfUser(String phoneAccount) {
		// TODO Auto-generated method stub
		return null;
	}

}
