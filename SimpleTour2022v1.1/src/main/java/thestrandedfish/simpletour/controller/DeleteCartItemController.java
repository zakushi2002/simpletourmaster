package thestrandedfish.simpletour.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import thestrandedfish.simpletour.model.Cart;
import thestrandedfish.simpletour.model.CartItem;
@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/deletefromcart"}) // ?key=1
public class DeleteCartItemController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String key = req.getParameter("key");

		// gio hang co nhieu mat hang
		HttpSession session = req.getSession();
		Object obj = session.getAttribute("cart");// luu tam vao session

		if (obj != null) {
			Map<String, CartItem> map = (Map<String, CartItem>) obj;
			map.remove(key);
			// update lai vao session
			session.setAttribute("cart", map);
		}
		// chuyen ve trang gio hang
		resp.sendRedirect(req.getContextPath() + "/cart");
	}
}
