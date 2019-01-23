package member.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDAO;

/**
 * Servlet implementation class UnMemLogin
 */
@WebServlet("/unLogin/unMemLogin.do")
public class UnMemLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnMemLogin() {
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
		String pwCheck;
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String phone = req.getParameter("phone");
		String password = req.getParameter("password");
		String passwordCheck = req.getParameter("passwordCheck");
		PrintWriter out = resp.getWriter();
		if(!password.equals(passwordCheck)) { //비번, 비번확인 불일치로 바로 리턴
			pwCheck = "-1"; //비번 불일치
			out.println(pwCheck);
		}else {
			MemberDAO dao = MemberDAO.getInstance();
			String check = dao.unMemLogin(name, birth, phone, password); //비회원 일치정보여부 먼저확인
			if(check == "1") { //비회원 정보있음 로그인 시킴 바로 
				HttpSession session = req.getSession(); // 세션 생성하면서 로그인 되고 메인이동
				check = "1";
				out.println(check);
			}else if(check == "2") { //회원정보 없으므로 비회원 정보 insert.
				dao.unMemJoin(name, birth, phone, password);
				HttpSession session = req.getSession(); //세션 생성후 로그인시키면서 메인이동
				check = "2";
				out.print(check);
			}
		} 
		
		
		
		
	}

}
