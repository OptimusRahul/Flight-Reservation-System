package com.Servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.TicketBooking.BookingID;
import com.TicketBooking.SeatNumberBooking;

public class BookTicket extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static Connection con;
	
    public BookTicket() {
    	con = DbConnection.getConnection();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	System.out.println(session.getAttribute("ids"));    	
    	int airplane_id = Integer.parseInt(session.getAttribute("ids").toString().trim());
      	int travellers = Integer.parseInt((String)session.getAttribute("passengers"));
      	String flight_num = (String)session.getAttribute("flight_num");
      	String flight_date = (String)session.getAttribute("flight_date");
      	String username = (String)session.getAttribute("Name");
      	boolean status = false;
      	String nameb="",namea="",a="", b="",time="";
      	String passengerName[] = null;
      	int getSeatNumber[] = null;
      	String tp="", tsn="";
      	PrintWriter pw = new PrintWriter(System.out);
      	String Name = "", MobileNum = "", Email = "";
    	for(int i=1; i<=travellers; i++) {
    		
    		String fname = request.getParameter("firstName"+i);
    		String mname = request.getParameter("middleName"+i);
    		String lname = request.getParameter("lastName"+i);
    		if(fname == null) fname="";
    		if(mname == null) mname="";
    		if(lname == null) lname="";
    		
    		Name += fname+"-"+mname+"-"+lname+" ";
    	}
    	System.out.println(Name.trim().split(" ").length);
    	
    	String mobNo = request.getParameter("mobno");
		MobileNum = mobNo;
		
		String email = request.getParameter("email");
		Email = email;
		
		int curr_airplane_total_seats=0;
		String curr_airplane_reserved_seats="";
		System.out.println("username : "+session.getAttribute("Name"));
    	System.out.println(Name);
    	System.out.println(MobileNum);
    	System.out.println(Email);
    	try {
    		
    		PreparedStatement totalseats = con.prepareStatement("Select totalnoofseats from airplane where airplane_id=?");
    		totalseats.setInt(1,airplane_id);
    		ResultSet total_rs = totalseats.executeQuery();
    		if(total_rs.next()) {
    			curr_airplane_total_seats = total_rs.getInt("totalnoofseats");
    			System.out.println(curr_airplane_total_seats);
    		}
    		
    		PreparedStatement reservedSeats = con.prepareStatement("Select seat_num from seat_reservation where flight_num=? and flight_date=? and status=?");
    		reservedSeats.setString(1, flight_num);
    		reservedSeats.setString(2, flight_date);
    		reservedSeats.setString(3, "BOOKED");
    		ResultSet reservedSeats_rs = reservedSeats.executeQuery();
    		while(reservedSeats_rs.next()) {
    			curr_airplane_reserved_seats += reservedSeats_rs.getString("seat_num")+" ";
    		}
    		if(curr_airplane_reserved_seats.equals(""))
    			curr_airplane_reserved_seats="0";
    			
    		String seatNum[] = curr_airplane_reserved_seats.trim().split(" ");
    		int reservedSeatNumArr[] = new int[seatNum.length];
    		for(int i=0; i<reservedSeatNumArr.length; i++) {
    			reservedSeatNumArr[i] = Integer.parseInt(seatNum[i]);
    		}
    		
    		getSeatNumber = SeatNumberBooking.getData(curr_airplane_total_seats, reservedSeatNumArr, travellers);
    		passengerName = Name.trim().split(" ");
    		String bookID = BookingID.getBookingID(flight_num,flight_date);
    		for(int i=0; i<travellers; i++) {
    			tsn+=getSeatNumber[i]+",";
    			bookID+=getSeatNumber[i];
    			try {
    				PreparedStatement bookseats = con.prepareStatement("insert into seat_reservation values(?,?,?,?,?,?,?,?)");
    				bookseats.setString(1, bookID);
    				bookseats.setString(2, flight_num);
    				bookseats.setString(3, flight_date);
    				bookseats.setString(4, String.valueOf(getSeatNumber[i]));
    				String temp_Passenger = passengerName[i].replace("-", " ").trim();
    				tp += temp_Passenger+",";
    				bookseats.setString(5, temp_Passenger);
    				bookseats.setString(6, mobNo);
    				bookseats.setString(7, username);
    				bookseats.setString(8, "BOOKED");
    				boolean bookedSeats_rs = bookseats.execute();
    				while(bookedSeats_rs) {
    					status = true;
    				}
    			}catch(SQLException e) {
    				e.printStackTrace();
    			}
    		}
    		System.out.println("tsn: "+tsn);
    		
    		PreparedStatement pst = con.prepareStatement("select departure_airport_code, arrival_airport_code, scheduled_departure_time from flight where flight_num=?");
    		pst.setString(1, flight_num);
    		ResultSet rs = pst.executeQuery();
    		
    		while(rs.next()) {
    			a=rs.getString("departure_airport_code");
    			b=rs.getString("arrival_airport_code");
    			time=rs.getString("scheduled_departure_time");
    		}
    		
    		PreparedStatement source = con.prepareStatement("select city from airport where airport_code=?");
    		pst.setString(1, a);
    		ResultSet source_rs = pst.executeQuery();
    		
    		while(source_rs.next()) {
    			namea=rs.getString("city");
    		}
    		
    		PreparedStatement dest = con.prepareStatement("select city from airport where airport_code=?");
    		pst.setString(1, b);
    		ResultSet dest_rs = pst.executeQuery();
    		
    		while(dest_rs.next()) {
    			nameb=rs.getString("city");
    		}
    		
    		
    	}catch(SQLException e) {
    		e.printStackTrace();    		
    	}
    	if(status == true) {
    		response.sendRedirect("./jsp/TicketGeneration.jsp?source="+namea+"&destination="+nameb+"&passenger="+tp+
    				"&date="+flight_date+"&time="+time+"&flight_num="+flight_num+"&seatNum"+tsn);
    	}
    	else {
    		pw.print("Failed");
    	}    
    	response.sendRedirect("./jsp/TicketGeneration.jsp?source="+namea+"&destination="+nameb+"&passenger="+tp+
				"&date="+flight_date+"&time="+time+"&flight_num="+flight_num+"&seatNum="+tsn);
    }
}

