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

public class LocationDAO {
	private static LocationDAO instance = new LocationDAO();
	public static LocationDAO getInstance() {
		return instance;
	}
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");//톰캣 가상의 폴더 default값
		DataSource ds =(DataSource)envCtx.lookup("jdbc/jsp");	//servers/context.xml에 있는 커넥션설정 name
		return ds.getConnection();
	}
	public ArrayList<LocationBean> getLocation(int locationNum) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<LocationBean> arr = new ArrayList<>();
		String sql = "select location_no,location_name,location_bigNum,location_x,location_y from location where location_bigNum = "+locationNum;
		try {
			con = getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				LocationBean b = new LocationBean(
						rs.getInt("location_no"),
						rs.getString("location_name"),
						rs.getInt("location_bigNum"),
						rs.getInt("location_x"),
						rs.getInt("location_y"));
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
	
	public ArrayList<LocationBean> getLocationName(int locationNum) {
		Connection con = null;
		Statement st = null;
		ResultSet rs = null;
		ArrayList<LocationBean> arr = new ArrayList<>();
		String sql = "select * from location where location_no = "+locationNum;
		try {
			con = getConnection();
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				LocationBean b = new LocationBean(
						rs.getInt("location_no"),
						rs.getString("location_name"),
						rs.getInt("location_bigNum"),
						rs.getInt("location_x"),
						rs.getInt("location_y"));
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
