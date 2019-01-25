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

import bean.AdminBean;


public class AdminDAO {
	
	private static AdminDAO instance = new AdminDAO();
	
	   public static AdminDAO getInstance() {
	      return instance;	      
	   }
	   
	   private Connection getConnection() throws Exception{		 	   
		       Context initContext = new InitialContext();		      
		       Context envContext = (Context)initContext.lookup("java:/comp/env");
		       DataSource ds =(DataSource)envContext.lookup("jdbc/jsp");
		       return ds.getConnection();
	   }
	   
	   //영화등록
	   public void movieInsert(AdminBean ab) {
		   Connection con = null;
		   PreparedStatement ps = null;
		   try {
			con = getConnection();
			String sql = "insert into adminmovieinfo values(adminmovieinfo_seq.nextval,?,?,?,?,?,?,?,?,?)";
			ps = con.prepareStatement(sql);
			ps.setString(1, ab.getMpostfile());
			ps.setString(2, ab.getMsubject());
			ps.setString(3, ab.getMtype());
			ps.setDate(4, ab.getMdate());
			ps.setString(5, ab.getMdirector());
			ps.setString(6, ab.getMactor());
			ps.setString(7, ab.getMgenre());
			ps.setString(8, ab.getMstory());
			ps.setString(9, ab.getAgeLimit());
			ps.executeQuery();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeCon(con, null, ps, null);
			
		} 
	   }
	   
	   //관리자페이지 -> 영화정보리스트 페이지에 페이지 로드와 동시에 영화리스트를 뿌리기 위해 List 메소드를 만듦
	   public ArrayList<AdminBean> getList(){
		   
		   Connection con = null;
		   Statement st = null;
		   ResultSet rs = null;
		   
		   ArrayList<AdminBean> arr = new ArrayList<AdminBean>();
		   AdminBean bean = new AdminBean();
		  
		   try {
			con = getConnection();
			String sql = "select * from ADMINMOVIEINFO";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				bean.setNo(rs.getInt("num"));
				bean.setMpostfile(rs.getString("MPOSTFILE"));
				bean.setMsubject(rs.getString("MSUBJECT"));
				bean.setMtype(rs.getString("MTYPE"));
				bean.setMdate(rs.getDate("MDATE"));
				bean.setMdirector(rs.getString("MDIRECTOR"));
				bean.setMactor(rs.getString("MACTOR"));
				bean.setMgenre(rs.getString("MGENRE"));
				bean.setMstory(rs.getString("MSTORY"));
				bean.setAgeLimit(rs.getString("AGELIMIT"));
															
				arr.add(bean);
			}
			
			 
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
		   return arr;
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
