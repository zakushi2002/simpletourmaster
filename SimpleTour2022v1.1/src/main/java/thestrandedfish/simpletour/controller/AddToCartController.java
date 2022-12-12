package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.CartItem;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.CartItemService;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.CartItemServiceImplement;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/addtocart"}) //?idTour=1
public class AddToCartController extends HttpServlet{
	private TourService tourService;
	private CartItemService cartItemService;
	@Override
	public void init() throws ServletException {
		tourService = new TourServiceImplement();
		cartItemService = new CartItemServiceImplement();
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idTour = req.getParameter("idTour");
		Tour tour = tourService.getTourByID(idTour);

		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");// luu tam vao session
		if (obj == null) 
		{// tao moi
			// Tao mat hang
			CartItem cartItem = new CartItem();
			cartItem.setTour(tour);
			cartItem.setQuantity(1);
			cartItem.setUnitPrice(tour.getSalePrice());
			double total = cartItem.getTotal();
			double parse = IntForTotal(total);
			session.setAttribute("totalprice", parse);
			// gio hang co nhieu mat hang
			Map<String, CartItem> map = new HashMap<>();
			
			map.put(idTour, cartItem);// them mat hang vao ds
			session.setAttribute("cart", map);// luu tam vao session
		} 
		else 
		{
			Map<String, CartItem> map = (Map<String, CartItem>) obj;

			CartItem cartItem = map.get(idTour);

			if (cartItem == null) 
			{
				cartItem = new CartItem();
				cartItem.setTour(tour);
				cartItem.setQuantity(1);
				cartItem.setUnitPrice(tour.getSalePrice());
				map.put(idTour, cartItem);
			} 
			else 
			{

				cartItem.setQuantity(cartItem.getQuantity() + 1);
			}
			double total = cartItem.getTotal();
			double parse = IntForTotal(total);
			session.setAttribute("totalprice", parse);
			session.setAttribute("cart", map);// luu tam vao session
		}

		resp.sendRedirect(req.getContextPath() + "/cart");
		/*
		int quantity = 1;
		String idTour;
		if (req.getParameter("idTour") != null )
		{
			idTour = req.getParameter("idTour");
			Tour tour = tourService.getTourByID(idTour);
			if (tour != null)
			{
				System.out.println("checkTour");
				if (req.getParameter("quantity") != null)
				{
					System.out.println("Check Quantity");
					quantity = Integer.parseInt(req.getParameter("quantity"));
				}
				HttpSession session = req.getSession();
				if (session.getAttribute("cart") == null)
				{
					System.out.println("Check Cart");
					Cart cart = new Cart();
					List<CartItem> cartItems = new ArrayList<CartItem>();
					CartItem item = new CartItem();
					item.setQuantity(quantity);
					item.setTour(tour);
					item.setUnitPrice(tour.getSalePrice());
					cartItems.add(item);
					cart.setCartItems(cartItems);
					session.setAttribute("cart", cart);
				}
				else
				{
					System.out.println("Cart Existed");
					Cart cart = (Cart) session.getAttribute("cart");
					List<CartItem> cartItems = cart.getCartItems();
					boolean check = false;
					for (CartItem item: cartItems)
					{
						if (item.getTour().getIdTour() == tour.getIdTour())
						{
							item.setQuantity(item.getQuantity() + quantity);
							cartItemService.edit(item);
							check = true;
							System.out.println("Duplicated");
						}
					}
					if (check == false)
					{
						CartItem item = new CartItem();
						item.setQuantity(quantity);
						item.setIdTour(tour.getIdTour());
						item.setTour(tour);
						item.setUnitPrice(tour.getSalePrice());
						cartItemService.insert(item);
						cartItems.add(item);
						System.out.println("Don't Dup");
						
					}
					session.setAttribute("cart", cart);
					System.out.println("Set Cart");
				}
			}
			System.out.println("Send Cart 1");
			resp.sendRedirect(req.getContextPath() + "/cart");
		}
		else
		{
			HttpSession session = req.getSession();
			req.setAttribute("messageFailed", "Add Tour Failed");
			resp.sendRedirect(req.getContextPath() + session.getAttribute("crash"));
		}
		*/
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	public double IntForTotal(double test)
	{
		double parse = test * 0.000042;
		return (double) Math.round(parse * 100) / 100;
	}
}
