package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DbConnection;

public class UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con; 
       
    public UserDetails() {
    	con = DbConnection.getConnection();       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	response.sendRedirect("./jsp/UserDetails.jsp");
    	/*response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		con = DbConnection.getConnection();
		String usr = request.getParameter("username");
		String pwd = request.getParameter("password");
		System.out.println(usr+" "+pwd);
		try {
			
			Statement st = con.createStatement();
			boolean result = st.execute("select * from login where usr='"+usr+"' and pwd='"+pwd+"'");
			if(result) {
				HttpSession session = request.getSession();
				session.setAttribute("Name", usr);
				response.sendRedirect("./jsp/Dashboard.jsp");
			}else {
				pw.println("Wrong Credentials");
			}
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}	
		response.getWriter().append("Served at: ").append(request.getContextPath());*/
	}

}
