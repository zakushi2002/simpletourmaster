package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.model.CartItem;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.CartItemService;
import thestrandedfish.simpletour.service.CartService;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.CartItemServiceImplement;
import thestrandedfish.simpletour.service.implement.CartServiceImplement;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns= {"/orderuser"})
public class OrderController extends HttpServlet{
	CartService cartService;
	CartItemService cartItemService;
	TourService tourService;
	@Override
	public void init() throws ServletException {
		cartService = new CartServiceImplement();
		cartItemService = new CartItemServiceImplement();
		tourService = new TourServiceImplement();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//DOC TU SESSION RA GIO HANG TRUOC
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");// luu tam vao session
		if (obj != null) 
		{
			//KIEM TRA XEM CO SP TRONG GIO HANG KO?
			Map<String, CartItem> map = (Map<String, CartItem>) obj;
			//TAO HOA DON TRUOC, DE LAY DUOC ID BILL
			Cart cart = new Cart();
			/*
			 * Object totalprice = session.getAttribute("totalprice"); double totalPay =
			 * (double)totalprice;
			 */
			long millis = System.currentTimeMillis();
			Date buyDate = new Date(millis);
			cart.setBuyDate(buyDate);
			cart.setStatusCart(1);
			/* cart.setTotalPay(totalPay); */
			
			// lay dang nhap
			Account buyer = (Account) session.getAttribute("account");
			cart.setAccount(buyer);
			//XEM THEM O LOP CartDAO
			// save Cart trc de lay id
			cartService.insert(cart);
			double total = 0;//tinh tong gia
			
			//lap cac phan tu trong map
			for (Entry<String, CartItem> entry : map.entrySet()) 
			{
				CartItem cartItem = entry.getValue();
			
				cartItem.setIdCart(cart.getIdCart());// set cart id vao day
				//luu lai cac mat hang
				cartItemService.insert(cartItem);
				// tinh tong gia
				total += cartItem.getQuantity() * cartItem.getUnitPrice();
				// Cập nhật độ hot - amount - seat
				String tourid = String.valueOf(cartItem.getTour().getIdTour());
				Tour editTour = tourService.getTourByID(tourid);
				editTour.setStockSeat(editTour.getStockSeat()+ cartItem.getQuantity());
				editTour.setAmount(editTour.getAmount() + cartItem.getQuantity());
				tourService.updateTour(editTour.getStockSeat(), editTour.getAmount(), editTour.getIdTour());
			}
				
			///cap nhat lai cart de co tong gia tien
			cart.setTotalPay(total);
			cartService.edit(cart);
			// chuyen ve trang thanh cong
			// xoa session gio hang vi da tao don hang thanh cong, giai phong bo nho
			session.removeAttribute("totalprice");
			session.removeAttribute("cart");
			resp.sendRedirect(req.getContextPath() + "/home");
		} 
		else 
		{
		// tra ve trang chu neu gio hang rong
			resp.sendRedirect(req.getContextPath() + "/cart");
		}		
		/*
		resp.setContentType("text/html;chartset=UTF-8");
		int successful = Integer.parseInt(req.getParameter("successful"));
		RequestDispatcher rq;
		HttpSession session = req.getSession();
		Account account = (Account) session.getAttribute("account");
		Cart cart = (Cart) session.getAttribute("cart");
		if (successful==1)
		{
			double total = 0;
			for (CartItem item: cart.getCartItems())
			{
				total += item.getQuantity() * item.getUnitPrice();
				item.setIdCart(cart.getIdCart());
				cartItemService.edit(item);
				System.out.println("ITEM OK");
			}
			System.out.print(total);
			cart.setTotalPay(total);
			cart.setStatusCart(1);
			cart.setAccount(account);
			cartService.edit(cart);
			System.out.println("OK");
			session.removeAttribute("cart");
			resp.sendRedirect("home");
		}
		else
		{
			rq = req.getRequestDispatcher("/views/payment.jsp");
			rq.forward(req, resp);
		}
		*/
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
