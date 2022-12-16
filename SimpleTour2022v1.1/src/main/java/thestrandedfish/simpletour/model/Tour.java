package thestrandedfish.simpletour.model;

import java.io.Serializable;
import java.sql.Date;
@SuppressWarnings("serial")
public class Tour implements Serializable{
	// Thuộc tính
	private int idTour;
	private String titleTour;
	private String codeTour;
	private int categoryID;
	private String contentTour;
	private String scheduleTour;
	private double priceTour;
	private Date dateStart;
	private Date dateEnd;
	private int travelTime;
	private int amount;
	private int stockSeat;
	private int maxSeat;
	private String startingGate;
	private String pathPhotoTour;
	private double saleOff;
	private double salePrice;
	private int statusTour;
	
	public Tour(int idTour, String titleTour, String codeTour, int categoryID, String contentTour, String scheduleTour, double priceTour, Date dateStart, Date dateEnd,
			int travelTime, int amount, int stockSeat, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, double salePrice, int statusTour) {
		super();
		this.idTour = idTour;
		this.titleTour = titleTour;
		this.codeTour = codeTour;
		this.categoryID = categoryID;
		this.contentTour = contentTour;
		this.scheduleTour = scheduleTour;
		this.priceTour = priceTour;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.travelTime = travelTime;
		this.amount = amount;
		this.stockSeat = stockSeat;
		this.maxSeat = maxSeat;
		this.startingGate = startingGate;
		this.pathPhotoTour = pathPhotoTour;
		this.saleOff = saleOff;
		this.salePrice = salePrice;
		this.statusTour = statusTour;
	}
	public Tour(String titleTour, String codeTour, int categoryID, String contentTour, String scheduleTour, double priceTour, Date dateStart, Date dateEnd, int amount, int stockSeat, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int statusTour) {
		super();
		this.titleTour = titleTour;
		this.codeTour = codeTour;
		this.categoryID = categoryID;
		this.contentTour = contentTour;
		this.scheduleTour = scheduleTour;
		this.priceTour = priceTour;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.amount = amount;
		this.stockSeat = stockSeat;
		this.maxSeat = maxSeat;
		this.startingGate = startingGate;
		this.pathPhotoTour = pathPhotoTour;
		this.saleOff = saleOff;
		this.statusTour = statusTour;
	}
	public Tour(int idTour, String titleTour, String codeTour, int categoryID, String contentTour, String scheduleTour, double priceTour, Date dateStart, Date dateEnd, int amount, int stockSeat, int maxSeat, String startingGate, String pathPhotoTour, double saleOff, int statusTour) {
		super();
		this.idTour = idTour;
		this.titleTour = titleTour;
		this.codeTour = codeTour;
		this.categoryID = categoryID;
		this.contentTour = contentTour;
		this.scheduleTour = scheduleTour;
		this.priceTour = priceTour;
		this.dateStart = dateStart;
		this.dateEnd = dateEnd;
		this.amount = amount;
		this.stockSeat = stockSeat;
		this.maxSeat = maxSeat;
		this.startingGate = startingGate;
		this.pathPhotoTour = pathPhotoTour;
		this.saleOff = saleOff;
		this.statusTour = statusTour;
	}
	public Tour(int idTour, int amount, int stockSeat) {
		super();
		this.idTour = idTour;
		this.amount = amount;
		this.stockSeat = stockSeat;
	}
	public Tour()
	{
		super();
	}
	public int getIdTour() {
		return idTour;
	}
	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}
	public String getTitleTour() {
		return titleTour;
	}
	public void setTitleTour(String titleTour) {
		this.titleTour = titleTour;
	}
	public String getCodeTour() {
		return codeTour;
	}
	public void setCodeTour(String codeTour) {
		this.codeTour = codeTour;
	}
	public int getCategoryID() {
		return categoryID;
	}
	public void setCategoryID(int categoryID) {
		this.categoryID = categoryID;
	}
	public String getContentTour() {
		return contentTour;
	}
	public void setContentTour(String contentTour) {
		this.contentTour = contentTour;
	}
	public String getScheduleTour() {
		return scheduleTour;
	}

	public void setScheduleTour(String scheduleTour) {
		this.scheduleTour = scheduleTour;
	}

	public double getPriceTour() {
		return priceTour;
	}
	public void setPriceTour(double priceTour) {
		this.priceTour = priceTour;
	}
	public Date getDateStart() {
		return dateStart;
	}
	public void setDateStart(Date dateStart) {
		this.dateStart = dateStart;
	}
	public Date getDateEnd() {
		return dateEnd;
	}
	public void setDateEnd(Date dateEnd) {
		this.dateEnd = dateEnd;
	}
	public int getTravelTime() {
		return travelTime;
	}
	public void setTravelTime(int travelTime) {
		this.travelTime = travelTime;
	}
	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getStockSeat() {
		return stockSeat;
	}

	public void setStockSeat(int stockSeat) {
		this.stockSeat = stockSeat;
	}

	public int getMaxSeat() {
		return maxSeat;
	}

	public void setMaxSeat(int maxSeat) {
		this.maxSeat = maxSeat;
	}

	public String getStartingGate() {
		return startingGate;
	}
	public void setStartingGate(String startingGate) {
		this.startingGate = startingGate;
	}
	public String getPathPhotoTour() {
		return pathPhotoTour;
	}
	public void setPathPhotoTour(String pathPhotoTour) {
		this.pathPhotoTour = pathPhotoTour;
	}
	public double getSaleOff() {
		return saleOff;
	}
	public void setSaleOff(double saleOff) {
		this.saleOff = saleOff;
	}

	public double getSalePrice() {
		return salePrice;
	}

	public void setSalePrice(double salePrice) {
		this.salePrice = salePrice;
	}

	public int getStatusTour() {
		return statusTour;
	}

	public void setStatusTour(int statusTour) {
		this.statusTour = statusTour;
	}
	
}
