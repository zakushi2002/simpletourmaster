package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.model.CartItem;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.CartItemService;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.CartItemServiceImplement;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/addtocart"})
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
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
