package admin.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.LocationBean;
import dao.LocationDAO;

@WebServlet("/movie/location.do")
public class LocationAction extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		int locationNum = Integer.parseInt(request.getParameter("locationNum"));
		
		LocationDAO dao = LocationDAO.getInstance();
		ArrayList<LocationBean> arr = dao.getLocation(locationNum);
		
		request.setAttribute("locationArr", arr);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("movieTime.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
