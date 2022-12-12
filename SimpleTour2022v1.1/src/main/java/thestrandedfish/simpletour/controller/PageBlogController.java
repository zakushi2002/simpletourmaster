package thestrandedfish.simpletour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = {"/pageblog"})
public class PageBlogController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int indexPageBlog = Integer.parseInt(req.getParameter("indexPageBlog"));
		String pathIndex = "/views/blog.jsp";
		switch(indexPageBlog)
		{
			case 1:
				pathIndex = "/views/blog/pageblog1.jsp";
				break;
			case 2:
				pathIndex = "/views/blog/pageblog2.jsp";
				break;
			case 3:
				pathIndex = "/views/blog/pageblog3.jsp";
				break;
			case 4:
				pathIndex = "/views/blog/pageblog4.jsp";
				break;
			case 5:
				pathIndex = "/views/blog/pageblog5.jsp";
				break;
			case 6:
				pathIndex = "/views/blog/pageblog6.jsp";
				break;
			case 7:
				pathIndex = "/views/blog/pageblog7.jsp";
				break;
			case 8:
				pathIndex = "/views/blog/pageblog8.jsp";
				break;
			case 9:
				pathIndex = "/views/blog/pageblog9.jsp";
				break;
			default:
				break;
		}
		
		req.getRequestDispatcher(pathIndex).forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
