package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.model.CartItem;
import thestrandedfish.simpletour.service.CartItemService;
import thestrandedfish.simpletour.service.CartService;
import thestrandedfish.simpletour.service.implement.CartItemServiceImplement;
import thestrandedfish.simpletour.service.implement.CartServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns= {"/orderuser"})
public class OrderController extends HttpServlet{
	CartService cartService;
	CartItemService cartItemService;
	@Override
	public void init() throws ServletException {
		cartService = new CartServiceImplement();
		cartItemService = new CartItemServiceImplement();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
