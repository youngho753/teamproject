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
