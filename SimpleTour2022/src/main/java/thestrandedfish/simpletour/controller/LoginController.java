package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import thestrandedfish.simpletour.model.Account;
import thestrandedfish.simpletour.service.AccountService;
import thestrandedfish.simpletour.service.implement.AccountServiceImplement;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/login"})
public class LoginController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Dùng lưu thông tin đăng nhập
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("account") != null)
		{
			resp.sendRedirect(req.getContextPath() + "/waiting");
			return;
		}
		// Check cookie
		Cookie[] cookies = req.getCookies();
		if (cookies != null)
		{
			for (Cookie cookie: cookies)
			{
				if (cookie.getName().equals("phoneAccount"))
				{
					session = req.getSession(true);
					session.setAttribute("phoneAccount", cookie.getValue());
					resp.sendRedirect(req.getContextPath() + "/waiting");
					return;
				}
			}
		}
		req.getRequestDispatcher("/decorators/login.jsp").forward(req, resp);		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String phoneAccount = req.getParameter("phoneAccount");
		String passwordAccount = req.getParameter("passwordAccount");
		boolean isRememberMe = false;
		String remember = req.getParameter("rememberAccount");
		if ("on".equals(remember))
		{
			isRememberMe = true;
		}
		String alertMsg = "";
		// Check trống
		if (phoneAccount.isEmpty() || passwordAccount.isEmpty())
		{
			alertMsg = "Phone or password cannot be empty!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/decorators/login.jsp").forward(req, resp);
			return;
		}
		AccountService service = new AccountServiceImplement();
		Account account = service.login(phoneAccount, passwordAccount);
		
		if(account != null)
		{
			HttpSession session =  req.getSession(true);
			session.setAttribute("account", account);
			if (isRememberMe)
			{
				saveRememberMe(resp, phoneAccount);
			}
			resp.sendRedirect(req.getContextPath() + "/waiting");
		}
		else 
		{
			alertMsg = "Phone or password is wrong!";
			req.setAttribute("alert", alertMsg);
			req.getRequestDispatcher("/decorators/login.jsp").forward(req, resp);
		}
		
		/*
		 * LoginDAO loginDAO = new LoginDAO(); Account customer =
		 * loginDAO.login(phoneCustomer, passwrodCustomer);
		 * 
		 * String linking = "/views/login.jsp"; RequestDispatcher rq =
		 * req.getRequestDispatcher(linking); if (customer == null) {
		 * req.setAttribute("mess", "Phone or password is wrong!"); rq.forward(req,
		 * resp); } else { HttpSession session = req.getSession();
		 * session.setAttribute("customerAccount", customer); //
		 * session.setMaxInactiveInterval(60*60*24); resp.sendRedirect("home"); }
		 */
	}
	private void saveRememberMe(HttpServletResponse response, String phoneAccount)
	{
		Cookie cookie = new Cookie(COOKIE_REMEMBER, phoneAccount);
		cookie.setMaxAge(10*60);
		response.addCookie(cookie);
	}
	public static final String COOKIE_REMEMBER = "phoneAccount";
	public static final String SESSION_PHONEACCOUNT = "phoneAccount";
}
