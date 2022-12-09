package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.dao.implement.AccountDAOImplement;
import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns= {"/admin/editaccount"})
public class EditAccountController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Thiết lập tiếng Việt
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Lấy phone Account
		String phoneAccount = req.getParameter("phoneAccount");
		System.out.print("not");
		// Khởi tạo DAO
		AccountDAOImplement accountDAOImplement = new AccountDAOImplement();
		
		Account account = accountDAOImplement.get(phoneAccount);
		req.setAttribute("accountDetail", account);
		RequestDispatcher rq = req.getRequestDispatcher("/admin/editaccount.jsp");
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
		resp.sendRedirect(req.getContextPath() + "/admin/accounttable");
	}
}
