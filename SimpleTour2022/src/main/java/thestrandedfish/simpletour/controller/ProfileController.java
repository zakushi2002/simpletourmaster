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
import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/profile"})
public class ProfileController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		RequestDispatcher rq = req.getRequestDispatcher("/admin/profile.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String phoneAccount = req.getParameter("phoneAccount");
		String nameAccount = req.getParameter("nameAccount");
		String passwordAccount = req.getParameter("passwordAccount");
		int statusAccount = Integer.parseInt(req.getParameter("statusAccount"));;
        int roleAccount = Integer.parseInt(req.getParameter("roleAccount"));
		String avatarAccount = req.getParameter("avatarAccount");
		AccountService service = new AccountServiceImplement();
		String alertMsg = "";
		System.out.print("Test");
		Account account = new Account(phoneAccount, passwordAccount, nameAccount, avatarAccount, roleAccount, statusAccount);
		service.edit(account);
		req.setAttribute("alert", alertMsg);
		Account refreshAccount = service.get(phoneAccount);
		HttpSession session =  req.getSession(true);
		session.setAttribute("account", refreshAccount);
		resp.sendRedirect(req.getContextPath() + "/admin/profile");
	}
}
