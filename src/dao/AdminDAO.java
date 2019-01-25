package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
		}
		   
		   
	   }


	      
	   
}
