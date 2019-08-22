package com.Flight;

public class FlightStatus {
	
	String Flight_Num, Flight_date, Departure_airport_code, Departure_time, Arrival_airport_code, Arrival_time, Type;
	int  no_of_available_seats, airplane_id, flight_duration;

	public FlightStatus(String flight_Num, String flight_date, int no_of_available_seats, int airplane_id,
			String departure_airport_code, String deptarture_time, String arrival_airport_code, String arrival_time, String type, int flight_duration) {
		Flight_Num = flight_Num;
		Flight_date = flight_date;
		this.no_of_available_seats = no_of_available_seats;
		this.airplane_id = airplane_id;
		Departure_airport_code = departure_airport_code;
		Departure_time = deptarture_time;
		Arrival_time = arrival_time;
		Arrival_airport_code = arrival_airport_code;
		this.Type = type;
		this.flight_duration = flight_duration;
	}
	
	@Override
	public String toString() {
		return Type+" "+ Flight_Num + " " + Flight_date + " " + no_of_available_seats + " " +
			   airplane_id + " "+Departure_airport_code + " " + Departure_time + " " +
			   Arrival_airport_code+ " " +Arrival_time+ " " + flight_duration;
	}

}
