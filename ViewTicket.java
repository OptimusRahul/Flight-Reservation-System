package com.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Connection.DbConnection;

public class ViewTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con;
	
	public ViewTicket() {
		con = DbConnection.getConnection();
	}
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PreparedStatement pst = con.prepareStatement("Select * from seat_reservation");
			ResultSet rs = pst.executeQuery();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
