package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import bean.LocationBean;
import bean.TicketBean;

public class TicketingDAO {
	
	private static TicketingDAO instance = new TicketingDAO();
	public static TicketingDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");//톰캣 가상의 폴더 default값
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jsp");	//servers/context.xml에 있는 커넥션설정 name
		return ds.getConnection();
	}
	
	public ArrayList<TicketBean> getMoiveName(String moviename) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<TicketBean> arr = new ArrayList<>();
		String sql = "SELECT * FROM location l, movie_time m WHERE l.location_bignum = m.no and l.location_name = '"+moviename+"'";
		try {
			con = getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				TicketBean b = new TicketBean(
						rs.getInt("no"),
						rs.getString("movie_name"),
						rs.getString("movie_time_strart"),
						rs.getString("movie_time_end"),
						rs.getString("movie_auditorium"),
						rs.getString("movie_seat"));
		
				arr.add(b);
			}
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			disConnection(con, st, null, rs);
		}
		
		return arr;
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
