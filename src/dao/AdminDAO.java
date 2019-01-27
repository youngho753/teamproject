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
import bean.MovieBean;


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
	   
	   //상세페이지 바꾸기
	   public AdminBean changeSangsaePage() {
		   
		   Connection con = null;
		   Statement st = null;
		   ResultSet rs = null;
		   
		   AdminBean bean = new AdminBean();
		   
		   try {
			con = getConnection();
			String sql = "select * from ADMINMOVIEINFO";
			st = con.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()) {
				bean.setNo(rs.getInt("num"));
				bean.setMpostfile(rs.getString("MPOSTFILE")); //이미지파일
				bean.setMsubject(rs.getString("MSUBJECT")); //영화제목
				bean.setMtype(rs.getString("MTYPE")); //디지털
				bean.setMdate(rs.getDate("MDATE")); //개봉일
				bean.setMdirector(rs.getString("MDIRECTOR")); //감독
				bean.setMactor(rs.getString("MACTOR")); //배우
				bean.setMgenre(rs.getString("MGENRE")); //장르
				bean.setMstory(rs.getString("MSTORY")); //줄거리
				bean.setAgeLimit(rs.getString("AGELIMIT")); //연령제한 사진
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeCon(con, st, null, rs);
		}
		   return bean;
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
