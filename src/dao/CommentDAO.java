package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import member.action.CommentDTO;

public class CommentDAO {
	
	private static CommentDAO instance;
	public static CommentDAO getInstance() {
		if(instance==null) {
			instance = new CommentDAO();
		}
		return instance;
	}
	
	private Connection getConnection() throws NamingException, SQLException{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsp");
		
		return ds.getConnection();
		
	}
	
	//코멘트 넣기
	public void insertComment(String contents, int star_grade) {
		
		Connection con = null;
		PreparedStatement ps = null;
		
		try {
			con = getConnection();
			String sql = "insert into moviecomment (no, comment_id, comment_date, comment_grade, comment_contents, comment_movie) values(moviecomment_SEQ.nextval,  ?,  to_char(SYSDATE, 'yyyy/mm/dd'),   ?   ,?  ,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, "userTest");
			ps.setInt(2, star_grade);
			ps.setString(3, contents);
			ps.setString(4, "말모이");
		
			
			ps.executeUpdate();
			
			
			
		} catch (NamingException | SQLException e) {
			e.printStackTrace();
		} finally {
				closeCon(con, null, ps, null);
		}
	}
	
	//페이징 하기 + 내용 내보내기
	public ArrayList<CommentDTO> getPaging(int startRow, int endRow) {
		
		Connection con = null;
		ResultSet rs = null;
		PreparedStatement ps = null;
		
		ArrayList<CommentDTO> arr = new ArrayList<CommentDTO>();
		
		try {
			con = getConnection();
			String sql =  "select * from "
					+ " (select rownum rn,aa.* from"
					+ " (select * from moviecomment order by no desc)aa)"
					+ "where rn>=? and rn<=?";
			
			ps = con.prepareStatement(sql);
			ps.setInt(1, startRow);
			ps.setInt(2, endRow);
			
			rs = ps.executeQuery();
			
			while(rs.next()) {
				CommentDTO bean = new CommentDTO();
				bean.setNum(rs.getInt("no"));
				bean.setId(rs.getString("comment_id"));
				bean.setGrade(rs.getInt("comment_grade"));
				bean.setContent(rs.getString("comment_contents"));
				bean.setWritedate(rs.getString("comment_date"));
				
				arr.add(bean);
			}
		
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			closeCon(con, null, ps, rs);
		}
		
		return arr;
	}
	
	//총 평점 검색
	public int commentCount() {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		int count = 0;
		
		try {
			con = getConnection();
			String sql = "select count(*) from moviecomment";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (NamingException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, st, null, rs);
		}
		
		return count;
	}
	
	//close
	public void closeCon(Connection con, Statement st, PreparedStatement ps, ResultSet rs) {
		
				try {
					if(con!=null)con.close();
					if(st!=null)st.close();
					if(rs!=null)rs.close();
					if(ps!=null)ps.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			
		}
	
	
}
