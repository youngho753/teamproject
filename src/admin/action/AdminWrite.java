package admin.action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.text.ParseException;


import java.util.*;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import bean.AdminBean;
import dao.AdminDAO;

/**
 * Servlet implementation class AdminWrite
 */
@WebServlet("/admin/write.do")
public class AdminWrite extends HttpServlet {
	java.util.Date date;
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminWrite() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		ServletContext context = req.getServletContext();
		String uploadPath = context.getRealPath("/admin/adminMoiveFile"); //포스터 저장되는 폴더 경로
		int size = 10*1024*1024; //데이터 크기 (10mb임)
		
		MultipartRequest multi = new MultipartRequest(req, uploadPath, size, "UTF-8", new DefaultFileRenamePolicy());
		String mpostfile = multi.getFilesystemName("mpostfile");
		String msubject = multi.getParameter("msubject");
		String mtype = multi.getParameter("mtype");
		String strDate = multi.getParameter("mdate");
		String mdirector = multi.getParameter("mdirector");
		String mactor = multi.getParameter("mactor");
		String mgenre = multi.getParameter("mgenre");
		String mstory = multi.getParameter("mstory");
		String ageLimit = multi.getParameter("ageLimit");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
	
		
		try {
			date = sdf.parse(strDate); //최상단에 전역변수로 date선언. 여기서 값 넣으면 위로 올라가서 전체공유(바꾸기전까지)
		} catch (ParseException e) {	//String 형 -> java.util.Date - > sql.Date 를 거쳐야 sql에 넣을 수 있다
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		java.sql.Date sqlDate = new Date(date.getTime());

		
		AdminBean ab = new AdminBean();
		ab.setMpostfile(mpostfile);
		ab.setMsubject(msubject);
		ab.setMtype(mtype);
		ab.setMdate(sqlDate);
		ab.setMdirector(mdirector);
		ab.setMactor(mactor);
		ab.setMgenre(mgenre);
		ab.setMstory(mstory);
		ab.setAgeLimit(ageLimit);
		
		AdminDAO dao = AdminDAO.getInstance();
		dao.movieInsert(ab);
		resp.sendRedirect("change.do");
		
		
		
	}

}
