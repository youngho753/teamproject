package com.zipcode;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ZipCodeDBA {
	
	private static ZipCodeDBA instance = new ZipCodeDBA();
	
	public static ZipCodeDBA getInstance() {
		return instance;
	}
	
	private Connection getConnection() throws Exception{
		Context initCtx = new InitialContext();
		Context envCtx = (Context)initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource)envCtx.lookup("jdbc/jsp");
		return ds.getConnection();
	}
	
	//우편번호 검색 메소드 : zipSearch()
	public ArrayList<ZipCode> zipSearch(String dong) {
        Statement st;
         ResultSet rs;
         Connection con;
         ArrayList<ZipCode> arr = new ArrayList<>();  
         
         try {         
        	con = getConnection();
            st = con.createStatement();
            String sql = "SELECT * FROM zipcode WHERE dong like '%"+dong+"%'";
         
         rs = st.executeQuery(sql);
         while(rs.next()) {
        	ZipCode z = new ZipCode();
            z.setZipcode(rs.getString("zipcode"));
            z.setSido(rs.getString("sido"));
            z.setGugun(rs.getString("gugun"));
            z.setDong(rs.getString("dong"));
            z.setBunji(rs.getString("bunji"));
            z.setSeq(rs.getInt("seq"));
            
            arr.add(z);
         }      
         }catch (SQLException e) {
            e.printStackTrace();
         } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
      return arr;
   }
}