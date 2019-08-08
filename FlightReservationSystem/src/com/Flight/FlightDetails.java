package com.Flight;

public class FlightDetails {
	
	String 	FlightNum, Airline, Weekdays,
			Departure_Airport_Code, Scheduled_Departure_Time,
			Arrival_Airport_Code, Scheduled_Arrival_Time,
			Flight_Duration;

	public String getFlightNum() {
		return FlightNum;
	}

	public void setFlightNum(String flightNum) {
		FlightNum = flightNum;
	}

	public String getAirline() {
		return Airline;
	}

	public void setAirline(String airline) {
		Airline = airline;
	}

	public String getWeekdays() {
		return Weekdays;
	}

	public void setWeekdays(String weekdays) {
		Weekdays = weekdays;
	}

	public String getDeparture_Airport_Code() {
		return Departure_Airport_Code;
	}

	public void setDeparture_Airport_Code(String departure_Airport_Code) {
		Departure_Airport_Code = departure_Airport_Code;
	}

	public String getScheduled_Departure_Time() {
		return Scheduled_Departure_Time;
	}

	public void setScheduled_Departure_Time(String scheduled_Departure_Time) {
		Scheduled_Departure_Time = scheduled_Departure_Time;
	}

	public String getArrival_Airport_Code() {
		return Arrival_Airport_Code;
	}

	public void setArrival_Airport_Code(String arrival_Airport_Code) {
		Arrival_Airport_Code = arrival_Airport_Code;
	}

	public String getScheduled_Arrival_Time() {
		return Scheduled_Arrival_Time;
	}

	public void setScheduled_Arrival_Time(String scheduled_Arrival_Time) {
		Scheduled_Arrival_Time = scheduled_Arrival_Time;
	}

	public String getFlight_Duration() {
		return Flight_Duration;
	}

	public void setFlight_Duration(String flight_Duration) {
		Flight_Duration = flight_Duration;
	}
	
}
