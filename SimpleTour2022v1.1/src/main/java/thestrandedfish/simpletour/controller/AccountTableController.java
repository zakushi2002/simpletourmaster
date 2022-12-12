package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/admin/accounttable"})
public class AccountTableController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		// Khởi tạo DAO
		AccountService accountService = new AccountServiceImplement();
		// Dùng List chứa danh sách từ DAO
		List<Account> accountList = accountService.getAll();
		// Thiết lập truyền dữ liệu lên JSP
		req.setAttribute("listAccount", accountList);
		
		RequestDispatcher rq = req.getRequestDispatcher("/admin/accountTable.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
