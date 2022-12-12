package thestrandedfish.simpletour.connection;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
// Class DAO này cung cấp các hoạt động cơ sở dữ liệu CRUD cho người dùng bảng trong cơ sở dữ liệu.
public class DBConnect {
	private String jdbcURL = "jdbc:mysql://localhost:3306/simpletour_master";
	private String jdbcUsername = "zakushi2002";
	private String jdbcPassword = "2002";
	
	public Connection getConnection()
	{
		Connection connection = null;
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ClassNotFoundException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}
}
