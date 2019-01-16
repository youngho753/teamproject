package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.CommentBean;

public class MovieDAO {
	private static MovieDAO instance = new MovieDAO();
	public static MovieDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");//톰캣 가상의 폴더 default값
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jsp");	//servers/context.xml에 있는 커넥션설정 name
		return ds.getConnection();
	}
	
	
	
	
	
	/*영화 상세보기 페이지 코멘트 (작성자 : 김동현)*/
	/*코멘트넣기*/
	public void insertComment(CommentBean bean) {
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "insert into moviecomment values(MOVIE_COMMENT_SEQ.nextval,?,to_char(sysdate,'yyyy-mm-dd'),?,?,?)";
			ps = con.prepareStatement(sql);
			
			ps.setString(1, "testuser");
			ps.setInt(2, 0);
			ps.setString(3, bean.getComment_contents());
			ps.setString(4, "말모이");
			ps.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection(con, null, ps, null);
		}
		
	}
	
	private void disConnection(Connection con,Statement st,PreparedStatement ps,ResultSet rs) {
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
