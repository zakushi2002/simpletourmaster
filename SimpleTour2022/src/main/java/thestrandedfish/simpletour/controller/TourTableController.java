package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.model.Category;
import thestrandedfish.simpletour.model.Tour;
import thestrandedfish.simpletour.service.CategoryService;
import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.CategoryServiceImplement;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/tourtable"})
public class TourTableController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Khởi tạo DAO
		TourService tourService = new TourServiceImplement();
		CategoryService categoryService = new CategoryServiceImplement();
		// Dùng List chứa danh sách từ DAO
		List<Category> categoryList = categoryService.getAll();
		List<Tour> tourList = tourService.getAllTour();
		// Thiết lập truyền dữ liệu lên JSP
		req.setAttribute("listTour", tourList);
		req.setAttribute("listCategory", categoryList);
		
		RequestDispatcher rq = req.getRequestDispatcher("/admin/tourTable.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
