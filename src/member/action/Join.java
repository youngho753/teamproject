package member.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.MemberBean;
import dao.MemberDAO;

@WebServlet("/member/join.do")
public class Join extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String mem_id = req.getParameter("mem_id");
		String mem_pw = req.getParameter("mem_pw");
		String mem_email = req.getParameter("mem_email");
		String mem_name = req.getParameter("mem_name");
		String mem_jumin1 = req.getParameter("mem_jumin1");
		String mem_jumin2 = req.getParameter("mem_jumin2");
		String mem_gender = req.getParameter("mem_gender");
		String mem_tel = req.getParameter("mem_tel");
		String mem_zip = req.getParameter("mem_zip");
		String mem_addr1 = req.getParameter("mem_addr1");
		String mem_addr2 = req.getParameter("mem_addr2");
		//--까지 회원 가입시 넘어 오는 모든 값
		//넘어 오는 값 빈으로 담음
		MemberBean mb = new MemberBean();
		mb.setMem_id(mem_id);
		mb.setMem_pw(mem_pw);
		mb.setMem_email(mem_email);
		mb.setMem_name(mem_name);
		mb.setMem_jumin1(mem_jumin1);
		mb.setMem_jumin2(mem_jumin2);
		mb.setMem_gender(mem_gender);
		mb.setMem_tel(mem_tel);
		mb.setMem_zip(mem_zip);
		mb.setMem_addr1(mem_addr1);
		mb.setMem_addr2(mem_addr2); // + 시퀀스랑 가입일자 디비에서 넣을것
		
		
		
		//디비로 연결 및 쏘기
		MemberDAO dao = MemberDAO.getInstance();
		dao.memberInsert(mb); //회원가입 정보 DB에 저장 완료
		
		HttpSession session = req.getSession(); //세션 생성
		session.setAttribute("mem_id", mem_id); // 세션으로 아이디값 저장
		resp.sendRedirect("../movie/joinfinish.jsp");


	
		
		
		
	}

}
