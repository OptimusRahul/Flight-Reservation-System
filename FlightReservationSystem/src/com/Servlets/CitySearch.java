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
import javax.servlet.http.HttpSession;

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
		try {
			String airport = null, city, airport_code;
			PreparedStatement pst = con.prepareStatement("select city, airport_code from airport");
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				city = rs.getString(1);
				airport_code = rs.getString(2);
				airport += city+"("+airport_code+")"+" ";
			}
			HttpSession session = request.getSession();
			session.setAttribute("airport",airport);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

}
