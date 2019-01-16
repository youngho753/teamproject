package com.zipcode;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

/**
 * Servlet implementation class ZipSearch
 */
@WebServlet("/zipSearch.do")
public class ZipSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ZipSearch() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String dong = req.getParameter("dong"); //입력받은 동값 넘어옴
		ZipCodeDBA dba = ZipCodeDBA.getInstance();
		ArrayList<ZipCode> arr = dba.zipSearch(dong);
		JSONArray jarr = new JSONArray();
		for(ZipCode z : arr) {
			JSONObject obj = new JSONObject();
			obj.put("zipCode", z.getZipcode());
			obj.put("sido", z.getSido());
			obj.put("gugun", z.getGugun());
			obj.put("dong", z.getDong());
			obj.put("bunji", z.getBunji());
			jarr.add(obj);
		}
		resp.setContentType("text/html; charset=UTF-8");   
		PrintWriter out = resp.getWriter();
		out.println(jarr.toString());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
