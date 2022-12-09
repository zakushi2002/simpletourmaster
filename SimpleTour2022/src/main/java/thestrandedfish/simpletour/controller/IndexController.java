package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.dao.implement.TourDAOImplement;
import thestrandedfish.simpletour.model.Tour;
@WebServlet(urlPatterns = {"/home"})
public class IndexController extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng Việt
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Khởi tạo DAO
		TourDAOImplement tourDAOImplement = new TourDAOImplement();
		// Sử dụng List chứa danh sách TourDAOImplement
		List<Tour> tourList = tourDAOImplement.getTopTour();
		// Thiết lập dữ liệu truyền cho JSP
		req.setAttribute("listRecent", tourList);
		// Trả về trang nào
		RequestDispatcher rq = req.getRequestDispatcher("/views/home.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
