package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DbConnection;
import com.PassengerDetails.PassengerDetails;

public class UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con; 
       
    public UserDetails() {
    	con = DbConnection.getConnection();       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.setContentType("text/html");
    	HttpSession session = request.getSession();
    	int id = (int)session.getAttribute("id");
		PrintWriter pw = response.getWriter();
		con = DbConnection.getConnection();
		try {
			PreparedStatement pst = con.prepareStatement("select * from user_details where id=?");
			pst.setInt(1,id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				String name = rs.getString(1);
				String address = rs.getString(2);
				System.out.println(name+address);
				String phoneNo = String.valueOf(rs.getInt(3));
				String email = rs.getString(4);
				System.out.println(name+address+phoneNo+email);
				PassengerDetails obj = new PassengerDetails(name, address, phoneNo, email);
				System.out.println(obj);
				session.setAttribute("PassengerDetails", obj);
				response.sendRedirect("./jsp/Dashboard.jsp");
			}else {
				pw.println("Wrong Credentials");
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
