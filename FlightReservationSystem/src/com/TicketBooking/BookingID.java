package com.TicketBooking;

public class BookingID {
	
	public static String getBookingID(String flight_num, String flight_date) {
		return "BK-"+flight_num+flight_date.replace("/", "");
	}

}
