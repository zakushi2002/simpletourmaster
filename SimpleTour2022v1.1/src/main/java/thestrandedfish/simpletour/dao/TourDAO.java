package thestrandedfish.simpletour.dao;

import java.sql.Date;
import java.util.List;

import thestrandedfish.simpletour.model.Tour;
public interface TourDAO {
	int countAllActive();
	List<Tour> getAllTour();
	List<Tour> getTopTour();
	List<Tour> getTop3Tour();
	List<Tour> pagingTour(int index);
	Tour getTourByID(String id);
	List<Tour> get3RecommendTour(Date dateStart, String startingGate, int idTour);
	List<Tour> get3HotSale();
	void insert(Tour tour);
	void delete(int idTour);
	void edit(Tour tour);
	void update(Tour tour);
	List<Tour> getTourBySearch(String startingGate, String titleTour, Date dateStart, int travelTime, double startPrice, double endPrice);
}
