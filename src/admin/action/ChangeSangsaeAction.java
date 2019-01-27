package admin.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AdminBean;
import dao.AdminDAO;

/**
 * Servlet implementation class ChangeSangsaeAction
 */
@WebServlet("/sangsae/change.do")
public class ChangeSangsaeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//이 서블릿은 영화상세페이지에서 글 등록을 하면 여기까지 와서 movieList에서 상세보기를 눌렀을때의 페이지 내용을 바꾸려함
		AdminDAO dao = AdminDAO.getInstance();
		AdminBean bean = dao.changeSangsaePage();
		request.setAttribute("bean", bean);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/sangsae/aquaman_sangsaePage.jsp"); //상세페이지로 보내기
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
