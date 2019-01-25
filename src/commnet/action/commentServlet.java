package commnet.action;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CommentDAO;

@WebServlet("/comment.do")
public class commentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		String contents = request.getParameter("comment_content");
		int star_grade = Integer.parseInt(request.getParameter("star_grade"));
		String comment_movie = request.getParameter("movieTitle");
		String comment_id = request.getParameter("userID");
		
		CommentDAO dao = CommentDAO.getInstance();
		dao.insertComment(contents, star_grade, comment_movie, comment_id);
		
		comment_movie = URLEncoder.encode(comment_movie, "UTF-8");
		response.sendRedirect("/teamproject/list.do?movieTitle="+comment_movie);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
