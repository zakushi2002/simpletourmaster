package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.service.CartService;
import thestrandedfish.simpletour.service.implement.CartServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/pay"})
public class PayController extends HttpServlet{
	CartService cartService;
	@Override
	public void init() throws ServletException {
		cartService = new CartServiceImplement();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Lấy tourID
		//String tourID = req.getParameter("tourID");
		// Khởi tạo DAO
		/*
		 * TourDAOImplement tourDAOImplement = new TourDAOImplement();
		 * 
		 * Tour tour = tourDAOImplement.getTourByID(tourID);
		 * req.setAttribute("tourDetail", tour);
		 */
		/* int payok = Integer.parseInt(req.getParameter("payok")); */
		/* req.setAttribute("payok", payok); */
		HttpSession session = req.getSession();
		Account account = (Account) session.getAttribute("account");
		if (account != null)
		{
			RequestDispatcher rq = req.getRequestDispatcher("/views/payment.jsp");
			rq.forward(req, resp);
		}
		else
		{
			resp.sendRedirect("cart");
		}
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
