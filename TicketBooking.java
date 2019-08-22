package com.TicketBooking;

public class TicketBooking {
	
	String Booking_ID,Flight_Num, Flight_Date, Seat_Number, Customer_Name, Customer_Ph_No, uname, status;
	
	public TicketBooking(String booking_ID, String flight_Num, String flight_Date, String seat_Number,
			String customer_Name, String customer_Ph_No, String uname, String status) {
		super();
		Booking_ID = booking_ID;
		Flight_Num = flight_Num;
		Flight_Date = flight_Date;
		Seat_Number = seat_Number;
		Customer_Name = customer_Name;
		Customer_Ph_No = customer_Ph_No;
		this.uname = uname;
		this.status = status;
	}

	@Override
	public String toString() {
		return Booking_ID + " " + Flight_Num + " " + Flight_Date + " " + Seat_Number + " " + Customer_Name + " " +
			   Customer_Ph_No + " " + uname + " " + status;
	}
	
	

}
