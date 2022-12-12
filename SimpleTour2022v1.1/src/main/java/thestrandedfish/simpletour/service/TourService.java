package thestrandedfish.simpletour.service;
import java.sql.Date;
import java.util.List;

import thestrandedfish.simpletour.model.Tour;
public interface TourService {
	boolean createTour(String title, int categoryID, String content, String schedule, double price, Date start, Date end, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int status);
	boolean editTour(int idTour, String title, int categoryID, String content, String schedule, double price, Date start, Date end, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int status);
	int countAllActive();
	List<Tour> getTopTour();
	List<Tour> getAllTour();
	List<Tour> pagingTour(int index);
	Tour getTourByID(String id);
	List<Tour> get3RecommendTour(Date dateStart, String startingGate, int idTour);
	List<Tour> get3HotSale();
	void delete(int idTour);
	List<Tour> getTourBySearch(String startingGate, String titleTour, Date dateStart, int travelTime, double startPrice, double endPrice);
}
