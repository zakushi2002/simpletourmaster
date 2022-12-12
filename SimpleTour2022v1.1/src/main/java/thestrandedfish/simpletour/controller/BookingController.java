package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;
@WebServlet(urlPatterns = {"/booking"})
public class BookingController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Khởi tạo DAO
		TourService tourService = new TourServiceImplement();
		// Dùng List chứa danh sách từ DAO
		// List<Tour> tourlist = tourService.getAllTour();
		String indexPage = req.getParameter("indexPage");
		// Khởi tạo trang đầu
		if (indexPage == null)
		{
			indexPage = "1";
		}
		int index = Integer.parseInt(indexPage);
		int count = tourService.countAllActive();
		// Chia trang cho count
		int endPage = count/6;
		if (count%6 != 0)
		{
			endPage++;
		}
		List<Tour> listPaging = tourService.pagingTour(index);
		List<Tour> listSale = tourService.get3HotSale();
		req.setAttribute("endPage", endPage);
		// Thiết lập truyền dữ liệu lên JSP
		
		req.setAttribute("listPaging", listPaging);
		req.setAttribute("listSale", listSale);
		req.setAttribute("tag", index);
		
		
		
		RequestDispatcher rq = req.getRequestDispatcher("/views/booking.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
