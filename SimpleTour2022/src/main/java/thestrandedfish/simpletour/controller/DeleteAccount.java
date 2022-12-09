package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/deleteaccount"})
public class DeleteAccount extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rq = req.getRequestDispatcher("/admin/accountTable.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String phoneAccount = req.getParameter("idToDelete");
		AccountService service = new AccountServiceImplement();
		String alertMsg = "Successfully";
		service.delete(phoneAccount);
		req.setAttribute("alert", alertMsg);
		resp.sendRedirect(req.getContextPath() + "/admin/accounttable");
	}
}
