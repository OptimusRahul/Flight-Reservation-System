package com.Flight;

public class FlightDetails {

	String 	FlightNum, Airline, Weekdays,
			Departure_Airport_Code, Scheduled_Departure_Time,
			Arrival_Airport_Code, Scheduled_Arrival_Time,
			Flight_Duration, Date;
	
	public FlightDetails(String flightNum, String airline, String weekdays, String departure_Airport_Code,
			String scheduled_Departure_Time, String arrival_Airport_Code, String scheduled_Arrival_Time,
			String flight_Duration,String date) {
		FlightNum = flightNum;
		Airline = airline;
		Weekdays = weekdays;
		Departure_Airport_Code = departure_Airport_Code;
		Scheduled_Departure_Time = scheduled_Departure_Time;
		Arrival_Airport_Code = arrival_Airport_Code;
		Scheduled_Arrival_Time = scheduled_Arrival_Time;
		Flight_Duration = flight_Duration;
		Date = date;
	}

	@Override
	public String toString() {
		return FlightNum + " " + Airline + " " + Weekdays + " " + Departure_Airport_Code + " " + Scheduled_Departure_Time + " " +
			   Arrival_Airport_Code	+ " " + Scheduled_Arrival_Time + " " + Flight_Duration+ " "+ Date;
	}	
}
