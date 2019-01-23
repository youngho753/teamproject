package member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MemberBean;
import dao.MemberDAO;

/**
 * Servlet implementation class MemLogin
 */
@WebServlet("/member/login.do")
public class MemLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemLogin() {
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
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String check;
		PrintWriter out = resp.getWriter();
		MemberBean mb = new MemberBean();
		MemberDAO dao = MemberDAO.getInstance();
		check = dao.memberLoginCheck(id, pw);
		
		if(check == "3") { //존재하지 않는 아이디
			out.println(check.trim()); //콜백으로 3전송
		}else if(check == "2") { //아이디 존재하나 비번 불일치
			out.print(check.trim());
		}else if(check == "1") { // 아이디 비번 모두 일치하니 다시 db가서 해당 회원 정보 전체 퍼올려서 세션생성
			mb = dao.memberLogin(id);
			HttpSession session = req.getSession();
			session.setAttribute("mem_id", id);
			out.print(id.trim());
		}
	}

}
