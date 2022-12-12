package thestrandedfish.simpletour.model;

import java.io.Serializable;
@SuppressWarnings("serial")
public class CartItem implements Serializable{
	private int idCartItem;
	private Tour tour; 
	private int quantity;
	private double unitPrice;
	private int idTour;
	private int idCart;
	public double getIntForTotal(double test)
	{
		double parse = test * 0.000042;
		return (double) Math.round(parse * 100) / 100;
	}
	public double getTotal()
	{
		return this.unitPrice * this.quantity;
	}
	public int getIdCartItem() {
		return idCartItem;
	}
	public void setIdCartItem(int idCartItem) {
		this.idCartItem = idCartItem;
	}
	public Tour getTour() {
		return tour;
	}
	public void setTour(Tour tour) {
		this.tour = tour;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		this.unitPrice = unitPrice;
	}
	public int getIdTour() {
		return idTour;
	}
	public void setIdTour(int idTour) {
		this.idTour = idTour;
	}
	public int getIdCart() {
		return idCart;
	}
	public void setIdCart(int idCart) {
		this.idCart = idCart;
	}
	public CartItem(int idCartItem, Tour tour, int quantity, double unitPrice, int idTour, int idCart) {
		super();
		this.idCartItem = idCartItem;
		this.tour = tour;
		this.quantity = quantity;
		this.unitPrice = unitPrice;
		this.idCart = idCart;
		this.idTour = idTour;
	}
	public CartItem() 
	{
		super();
	}
	
}
