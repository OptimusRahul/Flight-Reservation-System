package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
    	System.out.println(id);
		PrintWriter pw = response.getWriter();
		con = DbConnection.getConnection();
		try {
			PreparedStatement pst = con.prepareStatement("select * from user_details where id=?");
			Statement st = con.createStatement();
			ResultSet res = st.executeQuery("select * from user_details where id="+id);
			pst.setInt(1,id);
			ResultSet rs = pst.executeQuery();
			System.out.println(rs.next()+" "+res.next());
			if(!res.next()) {
				String name = rs.getString("name");
				String address = rs.getString("address");
				String phoneNo = rs.getString("phoneno");
				String email = rs.getString("email");
				PassengerDetails obj = new PassengerDetails(name, address, phoneNo, email);
				session.setAttribute("PassengerDetails", obj);
				response.sendRedirect("./jsp/UserDetails.jsp");
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