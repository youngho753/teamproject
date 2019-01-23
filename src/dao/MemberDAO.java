package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.MemberBean;

public class MemberDAO {
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");//톰캣 가상의 폴더 default값
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jsp");	//servers/context.xml에 있는 커넥션설정 name
		return ds.getConnection();
	}
	
	
	//아이디 중복 확인
	public String memberIdCheck(String mem_id) {
		String check = "0";
		Connection con  = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "select mem_id from member where mem_id = '" + mem_id + "'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				check = "-1"; //아이디 중복
			}else {
				check = "1"; // 사용가능
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, st, null, rs);
		}
		return check;
	}
	
	//멤버 회원가입(추가)
	public void memberInsert(MemberBean mb) {
		Connection con  = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "insert into member (no, mem_id, mem_pw, mem_name, mem_jumin1, mem_jumin2, mem_email, mem_gender, mem_tel, mem_zip, mem_addr1, mem_addr2, mem_date) values(member_seq.nextval,?,?,?,?,?,?,?,?,?,?,?,SYSDATE)";
			ps = con.prepareStatement(sql);
			ps.setString(1, mb.getMem_id());
			ps.setString(2, mb.getMem_pw());
			ps.setString(3, mb.getMem_name());
			ps.setString(4, mb.getMem_jumin1());
			ps.setString(5, mb.getMem_jumin2());
			ps.setString(6, mb.getMem_email());
			ps.setString(7, mb.getMem_gender());
			ps.setString(8, mb.getMem_tel());
			ps.setString(9, mb.getMem_zip());
			ps.setString(10, mb.getMem_addr1());
			ps.setString(11, mb.getMem_addr2());
			ps.executeUpdate();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, null, ps, null);
		}
	}
	
	//로그인 아이디/비번 체크
	public String memberLoginCheck(String id, String pw) {
		String check = "0";
		String gotpw = "";
		Connection con  = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "select mem_pw from member where mem_id = '" + id + "'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) { //만약에 값이 존재하면...
				gotpw = rs.getString(1);
				if(gotpw.equals(pw)) {
					check = "1"; //회원정보 일치
				}else {
					check = "2"; //아이디 일치하나 비번 불일치
				}
			}else {
				check = "3"; // 존재하지 않는 아이디 입니다.
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, st, null, rs);
		}
		return check;
		
	}
	
	//아이디 비번 일치하면 회원정보 다 퍼올리고 로그인 시킴 (-> 만들고 보니깐 이거 여기서 필요없고 그냥 위에 메소드로 받은 아이디로 세션 줘버리고 나중에 내 정보보기하면 그 아이디로 이렇게 정보 퍼면됨)
	public MemberBean memberLogin(String id) {
		MemberBean mb = new MemberBean();
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "select * from member where mem_id = '" + id + "'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) {
				mb.setNo(rs.getInt("no"));
				mb.setMem_id(rs.getString("mem_id"));
				mb.setMem_pw(rs.getString("mem_pw"));
				mb.setMem_name(rs.getString("mem_name"));
				mb.setMem_jumin1(rs.getString("mem_jumin1"));
				mb.setMem_jumin2(rs.getString("mem_jumin2"));
				mb.setMem_zip(rs.getString("mem_zip"));
				mb.setMem_addr1(rs.getString("mem_addr1"));
				mb.setMem_addr2(rs.getString("mem_addr2"));
				mb.setMem_tel(rs.getString("mem_tel"));
				mb.setMem_email(rs.getString("mem_email"));
				mb.setMem_date(rs.getString("mem_date"));
				mb.setMem_gender(rs.getString("mem_gender"));		
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, st, null, rs);
		}
		return mb;
	}
	
	//비회원 기존정보 여부 확인
	public String unMemLogin(String name, String birth, String phone, String password) {
		String check = "0";
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			con = getConnection();
			String sql = "select * from unMember where un_name = '"+name+ "'and un_birth = '" +birth+"' and un_phone = '" +phone+"' and un_pw = '" +password+ "'";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()) { 
				check = "1"; //정보 일치하는 비회원있음 로그인 시킴
			}else {
				check ="2"; //일치하는 회원정보 없으므로 돌아가서 다시 바로 자동 회원가입 시킴과 동시에 로그인
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, st, null, rs);
		}
		return check;
	}
	
	//정보없는 비회원들 바로 여기서 가입(insert)
	public void unMemJoin(String name, String birth, String phone, String password) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = getConnection();
			String sql = "insert into unmember values(unmember_seq.nextval,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, birth);
			ps.setString(2, phone);
			ps.setString(3, password);
			ps.setString(4, name);
			ps.executeQuery();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, null, ps, null);
		}
		
	}
	
	
	
	private void disConnection(Connection con, Statement st, PreparedStatement ps, ResultSet rs) {
		
			try {
				if(con!=null)con.close();
				if(st!=null)st.close();
				if(ps!=null)ps.close();
				if(rs!=null)rs.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	

}
