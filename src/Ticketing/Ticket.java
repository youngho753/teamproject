package Ticketing;

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



/**
 * Servlet implementation class Ticket
 */
@WebServlet("/movie/ticket.do")
public class Ticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ticket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		
		int locationNum = Integer.parseInt(request.getParameter("locationNum"));
		
		
		LocationDAO dao = LocationDAO.getInstance();
		
		ArrayList<LocationBean> arr = dao.getLocationName(locationNum);
		
		request.setAttribute("arr", arr);
		String i =  arr.get(0).getLocation_name();
		System.out.println(i);
		request.setAttribute("i", i);
		
		
		response.setContentType("text/html;charset=utf-8");

		RequestDispatcher dispatcher = request.getRequestDispatcher("../ticket/Ticketing1.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
