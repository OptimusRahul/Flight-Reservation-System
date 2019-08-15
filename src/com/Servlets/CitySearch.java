package com.Servlets;

import java.io.IOException; 
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Connection.DbConnection;

/**
 * Servlet implementation class CitySearch
 */
public class CitySearch extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static Connection con;
	public static int id;
    
	public CitySearch() {
		con = DbConnection.getConnection();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
