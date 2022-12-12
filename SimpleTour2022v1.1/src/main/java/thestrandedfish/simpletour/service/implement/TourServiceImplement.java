package thestrandedfish.simpletour.service.implement;

import java.sql.Date;
import java.util.List;

import thestrandedfish.simpletour.dao.TourDAO;
import thestrandedfish.simpletour.dao.implement.TourDAOImplement;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.TourService;

public class TourServiceImplement implements TourService{

	TourDAO tourDAO = new TourDAOImplement();
	@Override
	public int countAllActive() {
		return tourDAO.countAllActive();
	}
	@Override
	public List<Tour> getAllTour() {
		return tourDAO.getAllTour();
	}
	@Override
	public List<Tour> pagingTour(int index) {
		return tourDAO.pagingTour(index);
	}
	@Override
	public Tour getTourByID(String id) {
		return tourDAO.getTourByID(id);
	}
	@Override
	public List<Tour> get3RecommendTour(Date dateStart, String startingGate, int idTour) {
		return tourDAO.get3RecommendTour(dateStart, startingGate, idTour);
	}
	@Override
	public List<Tour> get3HotSale() {
		return tourDAO.get3HotSale();
	}
	@Override
	public List<Tour> getTopTour() {
		return tourDAO.getTopTour();
	}
	@Override
	public boolean createTour(String title, int categoryID, String content, String schedule, double price, Date start,
			Date end, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int status) {
		tourDAO.insert(new Tour(title, null, categoryID, content, schedule, price, start, end, 0, 0, maxSeat, startingGate, pathPhotoTour, saleOff, status));
		return true;
	}
	@Override
	public void delete(int idTour) {
		tourDAO.delete(idTour);
	}
	@Override
	public boolean editTour(int idTour,String title, int categoryID, String content, String schedule, double price, Date start,
			Date end, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int status) {
		tourDAO.edit(new Tour(idTour,title, null, categoryID, content, schedule, price, start, end, 0, 0, maxSeat, startingGate, pathPhotoTour, saleOff, status));
		return true;
	}
	@Override
	public List<Tour> getTourBySearch(String startingGate, String titleTour, Date dateStart, int travelTime,
			double startPrice, double endPrice) {
		
		return tourDAO.getTourBySearch(startingGate, titleTour, dateStart, travelTime, startPrice, endPrice);
	}
	
}
