package com.Servlets.Login;
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
import com.Encryption.Encryption;

public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con; 
    
	public LoginAction() {
		con = DbConnection.getConnection();
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		con = DbConnection.getConnection();
		String usr = request.getParameter("username");
		String pwd = Encryption.getSHA(request.getParameter("password"));
		System.out.println(usr+" "+pwd);
		try {
			PreparedStatement pst = con.prepareStatement("select * from login where usr=? and pwd=?");
			pst.setString(1, usr);
			pst.setString(2, pwd);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
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
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

}
