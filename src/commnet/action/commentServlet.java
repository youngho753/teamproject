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
		
		String comment = request.getParameter("comment_content");
		int star_grade = Integer.parseInt(request.getParameter("star_grade"));
		
		CommentDAO dao = CommentDAO.getInstance();
		dao.insertComment(comment, star_grade);
		
		response.sendRedirect("list.do"); //���⼭ �����°��� �ƴϰ� ����Ʈ�� �Ѹ��� ���� sendRedirect�� ��
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
