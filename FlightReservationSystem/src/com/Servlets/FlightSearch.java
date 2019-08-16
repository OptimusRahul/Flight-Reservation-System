package com.Servlets;

import java.io.IOException;   
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DbConnection;
import com.Flight.FlightDetails;
import com.Flight.FlightSchedule;

public class FlightSearch extends HttpServlet {

	private static final long serialVersionUID = 1L;
	public static Connection con;
	
	public FlightSearch()  {
		con = DbConnection.getConnection();
	}
   	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String source = request.getParameter("source");
		String destination = request.getParameter("destination");
		String datee = request.getParameter("date");
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String weekday="";
		Date d = null;
		try {
			d = format.parse(datee);
			weekday = new SimpleDateFormat("E").format(d);
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		HttpSession session = request.getSession();
		ArrayList<Object> list = new ArrayList<Object>();
		con = DbConnection.getConnection();
		try {
			PreparedStatement pst = con.prepareStatement("select * from flight where departure_airport_code=? and arrival_airport_code=?");
			pst.setString(1,source);
			pst.setString(2,destination);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				String flight_num = rs.getString(1);
				String airline = rs.getString("airline");
				String weekdays = rs.getString("weekdays");				
				String departure_airport_code = rs.getString("departure_airport_code");
				String scheduled_departure_time = String.valueOf(rs.getInt("scheduled_departure_time"));
				String arrival_airport_code = rs.getString("arrival_airport_code");
				String scheduled_arrival_time = String.valueOf(rs.getInt("scheduled_arrival_time"));
				String flight_duration = String.valueOf(rs.getInt("flight_duration"));
				if(FlightSchedule.getSchedule(weekdays, weekday)) {
					FlightDetails obj = new FlightDetails(flight_num, airline, weekdays, departure_airport_code, scheduled_departure_time, arrival_airport_code, scheduled_arrival_time, flight_duration);
					list.add(obj);
				}
				else {
					list.add("");
				}
			}
			response.sendRedirect("./jsp/Dashboard.jsp?flag=true&source="+list);
		} 
		catch (SQLException e) {
				e.printStackTrace();
			}	
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}
	
	}
