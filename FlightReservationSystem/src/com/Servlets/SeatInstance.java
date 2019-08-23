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

public class SeatInstance extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;
       
    public SeatInstance() {
    	con = DbConnection.getConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String flight_num = "";
    	String flight_date= "";
    	String status = "";
    	String seatNumber="";
    	HttpSession session = request.getSession();
    	String data = (String)session.getAttribute("ids");
    	try {
    		PreparedStatement seats = con.prepareStatement("select totalnoofseats from airplane where airplane_id=?");
			seats.setInt(1, 1);
			ResultSet seats_rs = seats.executeQuery();
			while(seats_rs.next()) {
				int totalseats = seats_rs.getInt(1);
			}
    		
    		PreparedStatement seat = con.prepareStatement("Select seat_num from seat_reservation where flight_num=? and flight_date=? and status=?");
    		seat.setString(1, flight_num);
    		seat.setString(2, flight_date);
    		seat.setString(3, status);
    		ResultSet seat_res = seat.executeQuery();
    		while(seat_res.next()) {
    			seatNumber += seat_res.getString("seat_num")+" ";
    		}
    		System.out.println(seatNumber);
    		
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}
	}

}
