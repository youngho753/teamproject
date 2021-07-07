package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
		}
		
	}
	
	

}
