package com.TicketBooking;

import java.lang.Math;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;

import com.Connection.DbConnection;
public class SeatNum{
	public static Connection con;
	
	public SeatNum() {
    	con = DbConnection.getConnection();
    }	
	
	public void getSeatData(String flight_num, String flight_date, String status, int airplane_id) {
		String seats=null, totalNoSeats=null;
		try {
			PreparedStatement totalSeats = con.prepareStatement("select totalnoofseats from airplane where airplane_id=?");
			totalSeats.setInt(1,airplane_id);
			ResultSet total = totalSeats.executeQuery();
			total.next();
			totalNoSeats += String.valueOf(total.getInt("totalnoofseats"));		
			
			PreparedStatement reservedSeats = con.prepareStatement("select seat_num from seat_reservation where flight_num=? and flight_date=? and status=?");
			reservedSeats.setString(1, flight_num);
			reservedSeats.setString(2, flight_date);
			reservedSeats.setString(2, status);
			ResultSet reserved = reservedSeats.executeQuery();
			while(reserved.next()) {
				seats += " " + reserved.getString("seats");
			}				
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
	}
}