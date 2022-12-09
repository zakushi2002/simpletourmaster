package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.dao.implement.TourDAOImplement;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns= {"/admin/edittour"})
public class EditTourController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng Việt
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Lấy tourID
		String tourID = req.getParameter("idTour");
		System.out.print("not");
		// Khởi tạo DAO
		TourDAOImplement tourDAOImplement = new TourDAOImplement();
		
		Tour tour = tourDAOImplement.getTourByID(tourID);
		req.setAttribute("tourDetail", tour);
		RequestDispatcher rq = req.getRequestDispatcher("/admin/edittour.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		int idTour = Integer.parseInt(req.getParameter("idTour"));
		String titleTour = req.getParameter("titleTour");
		int categoryID = Integer.parseInt(req.getParameter("categoryID"));
		String contentTour = req.getParameter("contentTour");
		String scheduleTour = req.getParameter("scheduleTour");
		double priceTour = Double.parseDouble(req.getParameter("priceTour"));
		String dateStart = req.getParameter("dateStart");
		String dateEnd = req.getParameter("dateEnd");
		int maxSeat = Integer.parseInt(req.getParameter("maxSeat"));
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateStartFormat = null;
		java.util.Date dateEndFormat = null;
		try {
			dateStartFormat = format.parse(dateStart);
			dateEndFormat = format.parse(dateEnd);
		} catch (ParseException e) {
			e.printStackTrace();
		}
        
        java.sql.Date start = new java.sql.Date(dateStartFormat.getTime());
        java.sql.Date end = new java.sql.Date(dateEndFormat.getTime());
		String startingGate = req.getParameter("startingGate");
		String pathPhotoTour = req.getParameter("pathPhotoTour");
		double saleOff = Double.parseDouble(req.getParameter("saleOff"));
		TourService service = new TourServiceImplement();
		String alertMsg = "";
		int status = Integer.parseInt(req.getParameter("statusTour"));
		System.out.print("Test");
		boolean isSuccess = service.editTour(idTour,titleTour, categoryID, contentTour, scheduleTour, priceTour, start, end, maxSeat, startingGate, pathPhotoTour, saleOff, status);
		if (isSuccess)
		{
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect(req.getContextPath() + "/admin/tourtable");
			System.out.print("State: " + isSuccess);
		}
		else
		{
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(REGISTER).forward(req, resp);
		}
	}
	public static final String REGISTER = "/admin/edittour.jsp";
}
