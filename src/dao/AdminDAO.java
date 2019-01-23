package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class AdminDAO {
	
	private static AdminDAO instance = new AdminDAO();
	
	   public static AdminDAO getInstance() {
	      return instance;	      
	   }
	   
	   private Connection getConnection() throws Exception{		 	   
		       Context initContext = new InitialContext();		      
		       Context envContext = (Context)initContext.lookup("java:/comp/env");
		       DataSource ds =(DataSource)envContext.lookup("jdbc/movie");
		       return ds.getConnection();
	   }


	      
	   
}
