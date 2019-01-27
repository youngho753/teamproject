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
import bean.TicketBean;
import dao.LocationDAO;
import dao.TicketingDAO;

/**
 * Servlet implementation class Ticketing
 */
@WebServlet("/movie/ticketing.do")
public class Ticketing extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ticketing() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String moviename = request.getParameter("moviename");
		
		System.out.println(moviename);
		
		TicketingDAO dao = TicketingDAO.getInstance();
		
		ArrayList<TicketBean> arr = dao.getMoiveName(moviename);
		
		request.setAttribute("arr", arr);
		System.out.println(arr.get(0).getMovie_name());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("Ticketing1.jsp");
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
