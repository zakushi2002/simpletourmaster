package thestrandedfish.simpletour.dao.implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import thestrandedfish.simpletour.connection.DBConnect;
import thestrandedfish.simpletour.dao.CategoryDAO;
import thestrandedfish.simpletour.model.Category;

public class CategoryDAOImplement implements CategoryDAO{
	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public List<Category> getAll() {
		// Khai báo List để lưu danh sách Tour
		List<Category> list = new ArrayList<Category>();
		// Khai báo query
		String query = "select * from simpletour_master.category";
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
				list.add(new Category(Integer.parseInt(rs.getString("categoryID")),
						rs.getString("categoryName"),
						Integer.parseInt(rs.getString("statusCategory"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

}
