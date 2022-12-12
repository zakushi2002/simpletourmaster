package thestrandedfish.simpletour.dao.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import thestrandedfish.simpletour.connection.DBConnect;
import thestrandedfish.simpletour.dao.CartItemDAO;
import thestrandedfish.simpletour.model.CartItem;

public class CartItemDAOImplement implements CartItemDAO{
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public void insert(CartItem item) {
		String sql ="insert into simpletour_master.cartitem(quantity, unitPrice, idTour, idCart) values(?,?,?,?);";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, item.getQuantity());
			ps.setDouble(2, item.getUnitPrice());
			ps.setInt(3, item.getTour().getIdTour());
			ps.setInt(4, item.getIdCart());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	@Override
	public void edit(CartItem item) {
		String query ="update simpletour_master.cartitem set quantity = ?, unitPrice = ?, idTour = ?, idCart = ? where idCartItem = ?;";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1,item.getQuantity());
			ps.setDouble(2, item.getUnitPrice());
			ps.setInt(3, item.getTour().getIdTour());
			ps.setInt(4, item.getIdCart());
			ps.setInt(5, item.getIdCartItem());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}				
	}

}
