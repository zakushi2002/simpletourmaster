package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/register"})
public class RegisterController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("phoneAccount") != null)
		{
			resp.sendRedirect(req.getContextPath() + "/admin");
			return;
		}
		Cookie[] cookies = req.getCookies();
		if (cookies != null)
		{
			for (Cookie cookie: cookies)
			{
				if (cookie.getName().equals("phoneAccount"))
				{
					session = req.getSession(true);
					session.setAttribute("phoneAccount", cookie.getValue());
					resp.sendRedirect(req.getContextPath() + "/admin");
					return;
				}
			}
		}
		req.getRequestDispatcher(REGISTER).forward(req, resp);
		/*
		 * resp.setContentType("text/html"); req.setCharacterEncoding("UTF-8");
		 * resp.setCharacterEncoding("UTF-8"); RequestDispatcher rq =
		 * req.getRequestDispatcher("/views/register.jsp"); rq.forward(req, resp);
		 */
	}
	@SuppressWarnings("static-access")
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String phoneAccount = req.getParameter("phoneAccount");
		String passwordAccount = req.getParameter("passwordAccount");
		String emailAccount = req.getParameter("emailAccount");
		String nameAccount = req.getParameter("nameAccount");
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
		boolean isSuccess = service.register(phoneAccount, passwordAccount, emailAccount, nameAccount);
		if (isSuccess)
		{
			req.setAttribute("alert", alertMsg);
			resp.sendRedirect(req.getContextPath() + "/login");
			System.out.print("State: " + isSuccess);
		}
		else
		{
			alertMsg = "System error!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher(REGISTER).forward(req, resp);
		}
	}
	public static final String REGISTER = "/views/register.jsp";
}
