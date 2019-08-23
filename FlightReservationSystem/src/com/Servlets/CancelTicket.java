package com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DbConnection;

public class CancelTicket extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static Connection con;
	
    public CancelTicket() {
    	con = DbConnection.getConnection();
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i = Integer.parseInt(request.getParameter("book-btn"));
		System.out.println(i);
		HttpSession session = request.getSession();
		ArrayList<Object> al = new ArrayList<Object>();
		al.add(session.getAttribute("list"));
		//System.out.println(al.get(i-1));
		//System.out.println("s: "+session.getAttribute("list").toString().replace("[", "").replace("]", "").trim().split(","));
		String ss = session.getAttribute("list").toString().replace("[", "").replace("]", "").trim();
		System.out.println("ss"+ss);
		String details[] = ss.trim().split(",");
		String data[] = details[i].trim().split(" ");
		//System.out.println(data[0].trim().split(" "));
		//System.out.println(data[1].trim().split(" "));
	
		//System.out.println(data[i].length());
		String bk = data[0];
    	String fn = data[1];
    	String fd = data[2];
    	String sn = data[3];
    	String cn = data[4];
    	String cp = data[5];
    	String un = data[6];
    	String st = data[7];
    	if(st.equals("BOOKED")) {
	    	try {
	    		System.out.println("hi");
	    		PreparedStatement pst = con.prepareStatement("update seat_reservation set status='CANCEL' where booking_id=? and flight_num=? and "
	    													+"flight_date=? and seat_num=? and cust_name=? and cust_phone=? and uname=? and status=?");
	    		pst.setString(1, bk);
	    		pst.setString(2, fn);
	    		pst.setString(3, fd);
	    		pst.setString(4, sn);
	    		pst.setString(5, cn);
	    		pst.setString(6, cp);
	    		pst.setString(7, un);
	    		pst.setString(8, st);
	    		ResultSet rs = pst.executeQuery();
	    		if(rs.next()) {
	    			response.sendRedirect("./jsp/ViewHistory.jsp");
	    		} 
	    		else {
	    			response.sendRedirect("./jsp/ViewHistory.jsp");
	    		}
	    	}catch(SQLException e) {
	    		e.printStackTrace();
	    	}
		}
	}
}
