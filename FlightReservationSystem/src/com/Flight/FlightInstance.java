package com.Flight;

public class FlightInstance {
	
	String Flight_Num, Flight_date, no_of_available_seats, airplane_id,
		   Deptarture_time, Arrival_time;

	public String getFlight_Num() {
		return Flight_Num;
	}

	public void setFlight_Num(String flight_Num) {
		Flight_Num = flight_Num;
	}

	public String getFlight_date() {
		return Flight_date;
	}

	public void setFlight_date(String flight_date) {
		Flight_date = flight_date;
	}

	public String getNo_of_available_seats() {
		return no_of_available_seats;
	}

	public void setNo_of_available_seats(String no_of_available_seats) {
		this.no_of_available_seats = no_of_available_seats;
	}

	public String getAirplane_id() {
		return airplane_id;
	}

	public void setAirplane_id(String airplane_id) {
		this.airplane_id = airplane_id;
	}

	public String getDeptarture_time() {
		return Deptarture_time;
	}

	public void setDeptarture_time(String deptarture_time) {
		Deptarture_time = deptarture_time;
	}

	public String getArrival_time() {
		return Arrival_time;
	}

	public void setArrival_time(String arrival_time) {
		Arrival_time = arrival_time;
	}

}
