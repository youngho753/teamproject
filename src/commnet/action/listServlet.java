package commnet.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CommentDAO;
import member.action.CommentDTO;


@WebServlet("/list.do")
public class listServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//페이징하기
		String pageNum = request.getParameter("pageNum") == null?"1":request.getParameter("pageNum");  //pageNum을 사용. 처음이면 1 들어가 있다.
		
		
		int currentPage = Integer.parseInt(pageNum);
		int pageSize = 5; //게시물을 5개씩 보여주기
		int startRow = (currentPage-1)*pageSize+1; //만일 2page라고 한다면 페이지6부터 나와야함
		int endRow = currentPage*pageSize;
		
		CommentDAO dao = CommentDAO.getInstance();
		
		ArrayList<CommentDTO> arr = dao.getPaging(startRow, endRow);
		int count = dao.commentCount();
		
		//총페이지수
		int totalPage = count/pageSize+(count%pageSize ==0?0:1);
		int blockPage = 3; //[이전]456[다음]
		int startPage = ((currentPage-1)/blockPage)*blockPage+1;//위의 blockPage의 4
		int endPage = startPage+blockPage-1;//위의 blockPage의  6
		
		/*
		 * 예) count 23;
		 * totPage 23/5+1 =5 ; ->만일 123[다음]이면은 다음엔 [이전]45[다음] 이 의미는 6페이지까지가 없을때
		 * startPage = 4;
		 * endPage = 6; -> 이게 5까지 나와야함
		 */
		if(endPage > totalPage) endPage= totalPage; //위의 예시일 때, 마지막 페이지가 6이고 실질적인 totalPage가 5이면 endPage를 totalPage값으로 바꿔주기
		
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("blockPage", blockPage);
		
		request.setAttribute("arr", arr);
		request.setAttribute("count", count);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/sangsae/commentListResult.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
