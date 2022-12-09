package thestrandedfish.simpletour.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
@SuppressWarnings("serial")
public class Cart implements Serializable{
	private int idCart;
	private Account account;
	private List<CartItem> cartItems;
	private Date buyDate;
	private double totalPay;
	private int statusCart;
	public double getIntForTotal(double test)
	{
		double parse = test * 0.000042;
		return (double) Math.round(parse * 100) / 100;
	}
	public int getInt(double test)
	{
		return (int) Math.round(test); 
	}
	public double getTotal()
	{
		int total = 0;
		for (CartItem item: this.cartItems)
		{
			total += item.getTotal();
		}
		return total;
	}
	public int getIdCart() {
		return idCart;
	}
	public void setIdCart(int idCart) {
		this.idCart = idCart;
	}
	public Account getAccount() {
		return account;
	}
	public void setAccount(Account account) {
		this.account = account;
	}
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public double getTotalPay() {
		return totalPay;
	}
	public void setTotalPay(double totalPay) {
		this.totalPay = totalPay;
	}
	public int getStatusCart() {
		return statusCart;
	}
	public void setStatusCart(int statusCart) {
		this.statusCart = statusCart;
	}
	public Cart(int idCart, Account account, List<CartItem> cartItems, Date buyDate, double totalPay,int statusCart) {
		super();
		this.idCart = idCart;
		this.account = account;
		this.cartItems = cartItems;
		this.buyDate = buyDate;
		this.totalPay =totalPay;
		this.statusCart = statusCart;
	} 
	public Cart()
	{
		super();
	}
	
	
}
