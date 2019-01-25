package admin.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.AdminBean;
import dao.AdminDAO;

/**
 * Servlet implementation class MovieInfoListAction
 */
@WebServlet("/movieInfoList.do")
public class MovieInfoListAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		AdminDAO dao = AdminDAO.getInstance();
		ArrayList<AdminBean> arr =dao.getList();
		
		request.setAttribute("arr", arr);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/movieListResult.jsp");
		dispatcher.forward(request, response);
		
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
