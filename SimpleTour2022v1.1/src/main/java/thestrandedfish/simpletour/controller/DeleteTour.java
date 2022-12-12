package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.service.TourService;
import thestrandedfish.simpletour.service.implement.TourServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/deletetour"})
public class DeleteTour extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rq = req.getRequestDispatcher("/admin/tourTable.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		int idTour = Integer.parseInt(req.getParameter("idToDelete"));
		TourService service = new TourServiceImplement();
		String alertMsg = "Successfully";
		service.delete(idTour);
		System.out.println("OK");
		req.setAttribute("alert", alertMsg);
		resp.sendRedirect(req.getContextPath() + "/admin/tourtable");
	}
}
