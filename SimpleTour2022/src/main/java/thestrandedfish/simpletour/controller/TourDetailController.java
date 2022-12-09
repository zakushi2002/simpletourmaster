package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.dao.implement.TourDAOImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/tourdetail"})
public class TourDetailController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng Việt
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Lấy tourID
		String tourID = req.getParameter("tourID");
		// Khởi tạo DAO
		TourDAOImplement tourDAOImplement = new TourDAOImplement();
		String crash = "/tourdetail?tourID=" + tourID;
		req.setAttribute("crash", crash);
		HttpSession session = req.getSession();
		session.setAttribute("crash", crash);
		Tour tour = tourDAOImplement.getTourByID(tourID);
		List<Tour> tourList = tourDAOImplement.get3RecommendTour(tour.getDateStart(), tour.getStartingGate(), tour.getIdTour());
		req.setAttribute("list3tour", tourList);
		req.setAttribute("tourDetail", tour);
		RequestDispatcher rq = req.getRequestDispatcher("/views/tour.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		super.doPost(req, resp);
	}
}
