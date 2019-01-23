package commnet.action;

import java.io.IOException;

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
		response.setContentType("text/html; charset=UTF-8");
		
		String contents = request.getParameter("comment_content");
		int star_grade = Integer.parseInt(request.getParameter("star_grade"));
		String comment_movie = request.getParameter("movieTitle");
		
		System.out.println(comment_movie);
		
		CommentDAO dao = CommentDAO.getInstance();
		dao.insertComment(contents, star_grade);
		
		response.sendRedirect("list.do");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
