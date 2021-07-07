package commnet.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.CommentBean;
import dao.MovieDAO;


@WebServlet("/movie_view/comment.do")
public class CommentAction extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String comment = request.getParameter("comment");
		
		CommentBean bean = new CommentBean();
		bean.setComment_contents(comment);
		
		MovieDAO dao = MovieDAO.getInstance();
		dao.insertComment(bean);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
