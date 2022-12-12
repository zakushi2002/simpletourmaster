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
@WebServlet(urlPatterns = {"/admin/createnewaccount"})
public class CreateNewAccount extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rq = req.getRequestDispatcher("/admin/createnewaccount.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String phoneAccount = req.getParameter("phoneAccount");
		String passwordAccount = req.getParameter("passwordAccount");
		String emailAccount = req.getParameter("emailAccount");
		String nameAccount = req.getParameter("nameAccount");
		String avatarAccount = req.getParameter("avatarAccount");
		int roleAccount = Integer.parseInt(req.getParameter("roleAccount"));
		int statusAccount = Integer.parseInt(req.getParameter("statusAccount"));
		AccountService service = new AccountServiceImplement();
		String alertMsg = "";
		if (service.checkExistEmail(emailAccount))
		{
			alertMsg = "Email already exists!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(REGISTER).forward(req, resp);
			return;
		}
		if (service.checkExistPhone(phoneAccount))
		{
			alertMsg = "Phone number already exists!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(REGISTER).forward(req, resp);
			return;
		}
		boolean isSuccess = service.registerAdmin(phoneAccount, passwordAccount, emailAccount, nameAccount, avatarAccount, roleAccount, statusAccount);
		if (isSuccess)
		{
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect(req.getContextPath() + "/admin/accounttable");
			System.out.print("State: " + isSuccess);
		}
		else
		{
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(REGISTER).forward(req, resp);
		}
	}
	public static final String REGISTER = "/admin/createnewaccount.jsp";
}
