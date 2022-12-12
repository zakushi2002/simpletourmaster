package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Account;

@SuppressWarnings("serial")
@WebServlet(urlPatterns="/waiting")
public class WaitingController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session =  req.getSession();
		if (session != null && session.getAttribute("account") != null)
		{
			Account account = (Account)session.getAttribute("account");
			req.setAttribute("phoneAccount", account.getPhoneAccount());
			if (account.getRoleAccount() == 1)
			{
				resp.sendRedirect(req.getContextPath() + "/admin/profile");
			}
			else
			{
				resp.sendRedirect(req.getContextPath() + "/home");
			}
		}
		else
		{
			resp.sendRedirect(req.getContextPath() + "/login");
		}
	}
}
