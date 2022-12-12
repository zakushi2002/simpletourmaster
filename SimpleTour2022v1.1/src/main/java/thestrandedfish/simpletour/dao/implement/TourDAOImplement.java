package thestrandedfish.simpletour.dao.implement;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import thestrandedfish.simpletour.connection.DBConnect;
import thestrandedfish.simpletour.dao.TourDAO;
import thestrandedfish.simpletour.model.Tour;

public class TourDAOImplement implements TourDAO{

	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	@Override
	public int countAllActive() {
		String query = "select count(*) from simpletour_master.tour where statusTour = 1;";
		try
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next())
			{
				return rs.getInt(1);
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public List<Tour> getAllTour() {
		// Khai báo List để lưu danh sách Tour
		List<Tour> list = new ArrayList<Tour>();
		// Khai báo query
		String query = "select * from simpletour_master.tour";
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
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Tour> getTopTour() {
		// Khai báo List để lưu danh sách Tour
		List<Tour> list = new ArrayList<Tour>();
		// Khai báo query
		String query = "select * from simpletour_master.tour order by idTour desc limit 9;";
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
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;			
	}
	@Override
	public List<Tour> getTop3Tour() {
		// Khai báo List để lưu danh sách Tour
		List<Tour> list = new ArrayList<Tour>();
		// Khai báo query
		String query = "select * from simpletour_master.tour order by idTour desc limit 6;";
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
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Tour> pagingTour(int index) {
		String query ="select * from simpletour_master.tour where statusTour = 1 order by idTour desc limit ?,6;";
		List<Tour> list = new ArrayList<Tour>();
		try 
		{
			// Mở kết nối Database
			conn = new DBConnect().getConnection();
			// Truyền query vào PreparedStatement
			ps = conn.prepareStatement(query);
			// Truyền index
			ps.setInt(1, (index - 1) * 6);
			// Thực thi query
			rs = ps.executeQuery();
			while (rs.next())
			{
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public Tour getTourByID(String id) {
		String query = "select * from simpletour_master.tour where idTour = ?;";
		try
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(query);
			ps.setInt(1, Integer.parseInt(id));
			rs = ps.executeQuery();
			while (rs.next())
			{
				Tour tour = new Tour();
				tour.setIdTour(Integer.parseInt(rs.getString("idTour")));
				tour.setTitleTour(rs.getString("titleTour"));
				tour.setCodeTour(rs.getString("codeTour"));
				tour.setCategoryID(Integer.parseInt(rs.getString("categoryID")));
				tour.setContentTour(rs.getString("contentTour"));
				tour.setScheduleTour(rs.getString("scheduleTour"));
				tour.setPriceTour(rs.getDouble("priceTour"));
				tour.setDateStart(rs.getDate("dateStart"));
				tour.setDateEnd(rs.getDate("dateEnd"));
				tour.setTravelTime(rs.getInt("travelTime"));
				tour.setAmount(Integer.parseInt(rs.getString("amount")));
				tour.setStockSeat(Integer.parseInt(rs.getString("stockSeat")));
				tour.setMaxSeat(Integer.parseInt(rs.getString("maxSeat")));
				tour.setStartingGate(rs.getString("startingGate"));
				tour.setPathPhotoTour(rs.getString("pathPhotoTour"));
				tour.setSaleOff(Double.parseDouble(rs.getString("saleOff")));
				tour.setSalePrice(Double.parseDouble(rs.getString("salePrice")));
				tour.setStatusTour(Integer.parseInt(rs.getString("statusTour")));
				return tour;
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public List<Tour> get3RecommendTour(Date dateStart, String startingGate, int idTour) {
		String query ="select distinct reTour.* from (select * from simpletour_master.tour where dateStart = ? and statusTour = 1 and stockSeat < maxSeat union distinct select * from simpletour_master.tour where startingGate = ? and statusTour = 1 and stockSeat < maxSeat) as reTour left outer join (select * from simpletour_master.tour where idTour = ?) as exTour on reTour.idTour = exTour.idTour where exTour.idTour is null order by dateStart asc, amount desc limit 3;";
		List<Tour> list = new ArrayList<Tour>();
		try 
		{
			// Mở kết nối Database
			conn = new DBConnect().getConnection();
			// Truyền query vào PreparedStatement
			ps = conn.prepareStatement(query);
			// Truyền parameters
			ps.setDate(1, dateStart);
			ps.setString(2, startingGate);
			ps.setInt(3, idTour);
			// Thực thi query
			rs = ps.executeQuery();
			while (rs.next())
			{
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<Tour> get3HotSale() {
		String query = "select * from simpletour_master.tour where saleOff > 0 and statusTour = 1 order by saleOff desc limit 3;";
		List<Tour> list = new ArrayList<Tour>();
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
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public void insert(Tour tour) {
		String sql ="insert into simpletour_master.tour(titleTour, codeTour, categoryID, contentTour, scheduleTour, priceTour, dateStart, dateEnd, amount, stockSeat, maxSeat, startingGate, pathPhotoTour, saleOff, statusTour) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, tour.getTitleTour());
			ps.setString(2, tour.getCodeTour());
			ps.setInt(3, tour.getCategoryID());
			ps.setString(4, tour.getContentTour());
			ps.setString(5, tour.getScheduleTour());
			ps.setDouble(6, tour.getPriceTour());
			ps.setDate(7, tour.getDateStart());
			ps.setDate(8, tour.getDateEnd());
			ps.setInt(9, tour.getAmount());
			ps.setInt(10, tour.getStockSeat());
			ps.setInt(11, tour.getMaxSeat());
			ps.setString(12, tour.getStartingGate());
			ps.setString(13, tour.getPathPhotoTour());
			ps.setDouble(14, tour.getSaleOff());
			ps.setInt(15, tour.getStatusTour());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	@Override
	public void delete(int idTour) {
		String sql = "delete from simpletour_master.tour where idTour = ?;";
		
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, idTour);
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	@Override
	public void edit(Tour tour) {
		String sql ="update simpletour_master.tour set titleTour = ?, categoryID = ?, contentTour = ?, scheduleTour = ?, priceTour = ?, dateStart = ?, dateEnd = ?, maxSeat = ?, startingGate = ?, pathPhotoTour = ?, saleOff = ?, statusTour = ? where idTour = ?;";
		try 
		{
			conn = new DBConnect().getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setString(1, tour.getTitleTour());
			ps.setInt(2, tour.getCategoryID());
			ps.setString(3, tour.getContentTour());
			ps.setString(4, tour.getScheduleTour());
			ps.setDouble(5, tour.getPriceTour());
			ps.setDate(6, tour.getDateStart());
			ps.setDate(7, tour.getDateEnd());
			ps.setInt(8, tour.getMaxSeat());
			ps.setString(9, tour.getStartingGate());
			ps.setString(10, tour.getPathPhotoTour());
			ps.setDouble(11, tour.getSaleOff());
			ps.setInt(12, tour.getStatusTour());
			ps.setInt(13, tour.getIdTour());
			ps.executeUpdate();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	@Override
	public List<Tour> getTourBySearch(String startingGate, String titleTour, Date dateStart, int travelTime,
			double startPrice, double endPrice) {
		String query ="select * from simpletour_master.tour where ";
		int fil = 0;
		if (startingGate != "")
		{
			query += "titleTour like ? ";
			fil = 1;
		}
		if (startingGate != "")
		{
			if (fil == 1)
			{
				query += " or ";
			}
			query += "titleTour like ?";
		}
		List<Tour> list = new ArrayList<Tour>();
		try 
		{
			// Mở kết nối Database
			conn = new DBConnect().getConnection();
			// Truyền query vào PreparedStatement
			ps = conn.prepareStatement(query);
			// Truyền index
			//ps.setInt(1, (index - 1) * 6);
			// Thực thi query
			rs = ps.executeQuery();
			while (rs.next())
			{
				list.add(new Tour(Integer.parseInt(rs.getString("idTour")), 
						rs.getString("titleTour"),
						rs.getString("codeTour"),
						Integer.parseInt(rs.getString("categoryID")),
						rs.getString("contentTour"),
						rs.getString("scheduleTour"),
						Double.parseDouble(rs.getString("priceTour")),
						rs.getDate("dateStart"),
						rs.getDate("dateEnd"),	
						Integer.parseInt(rs.getString("travelTime")),
						Integer.parseInt(rs.getString("amount")),
						Integer.parseInt(rs.getString("stockSeat")),
						Integer.parseInt(rs.getString("maxSeat")),
						rs.getString("startingGate"),
						rs.getString("pathPhotoTour"),
						Double.parseDouble(rs.getString("saleOff")),
						Double.parseDouble(rs.getString("salePrice")),
						Integer.parseInt(rs.getString("statusTour"))));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return list;
	}

}
