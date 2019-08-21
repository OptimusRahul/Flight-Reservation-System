package com.Servlets;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Connection.DbConnection;
import com.Flight.FlightStatus;

public class FlightInstance extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;

    public FlightInstance() {
    	con = DbConnection.getConnection();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Select flight, weekday, dept_time,arrival_time from flight
		ArrayList<Object> flight_list = new ArrayList<Object>();
		
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(request.getAttribute("AvailableFlights"));
		Iterator<Object> it = list.iterator();
		
		String flights[],data[];
		String Flight_num, Flight_date="", Departure_time, Arrival_time, Arrival_airport_code, Departure_airport_code;
		int noofavailableseats, totalseats=0, reservedSeat=0, Airplane_id, Flight_duration;
		String Airplane_type_name, company="";
		String aid="", fid="";
		
		HttpSession session = request.getSession();
		int noOfTravellers = Integer.parseInt(session.getAttribute("passengers").toString());
		while(it.hasNext()) {			
			flights = it.next().toString().trim().replace("[","").replace("]","").split(",");
			for(int i=0; i<flights.length; i++) {
				data = flights[i].trim().split(" ");
				Flight_num = data[0];
				Flight_date = data[8];
				Departure_airport_code = data[3];
				Departure_time = data[4];
				if(Departure_time.length()<4) {
					Departure_time = "0"+Departure_time;
				}
				Departure_time = Departure_time.substring(0,2)+":"+ Departure_time.substring(2, 4) + "hrs";
				Arrival_airport_code = data[5];
				Arrival_time = data[6];
				if(Arrival_time.length()<4) {
					Arrival_time = "0"+Departure_time;
				}
				Arrival_time = Arrival_time.substring(0,2)+":"+ Arrival_time.substring(2, 4) + "hrs";
				Flight_duration = Integer.parseInt(data[7]);
				Airplane_id = Integer.parseInt(Flight_num.trim().split("-")[2]);
				aid+=Airplane_id+" ";
				fid+=Flight_num+" ";
				Airplane_type_name = Flight_num.trim().split("-")[1];
				try {
					PreparedStatement seats = con.prepareStatement("select totalnoofseats from airplane where airplane_id=?");
					seats.setInt(1, Airplane_id);
					ResultSet seats_rs = seats.executeQuery();
					while(seats_rs.next()) {
						totalseats = seats_rs.getInt(1);
					}
					
					PreparedStatement airplaneName = con.prepareStatement("select company from airplane_type where airplane_type_name=?");
					airplaneName.setString(1, Airplane_type_name);
					ResultSet name_rs = airplaneName.executeQuery();
					while(name_rs.next()) {
						company = name_rs.getString(1);
					}
					
					PreparedStatement reservedSeats = con.prepareStatement("select count(seat_num) from seat_reservation where flight_num=? and flight_date=?");
					reservedSeats.setString(1, Flight_num);
					reservedSeats.setString(2, Flight_date);
					ResultSet reserved_rs = reservedSeats.executeQuery();
					while(reserved_rs.next()) {
						reservedSeat = reserved_rs.getInt(1);
					}
					
					noofavailableseats = totalseats - reservedSeat;
					if(noofavailableseats >= noOfTravellers) {
						FlightStatus obj = new FlightStatus(Flight_num, Flight_date, noofavailableseats, Airplane_id, Departure_airport_code ,Departure_time, Arrival_airport_code, Arrival_time, company, Flight_duration);
						flight_list.add(obj);
					}
					
				}catch(SQLException e) {
					e.printStackTrace();
				}
			}
		}
		session.setAttribute("air_id", aid);
		session.setAttribute("flight_id", fid);
		session.setAttribute("flight_date", Flight_date);
		if(session.getAttribute("Name") != null)
			response.sendRedirect("./jsp/Dashboard.jsp?flag=true&source="+flight_list);
		else
			response.sendRedirect("./jsp/Search.jsp?flag=true&source="+flight_list);
		}
}
