package com.Flight;

public class FlightSchedule {
	
	public static boolean getSchedule(String weekdays, String weekday) {
		String weekSplit[] = weekdays.split("_");
		for(String dayofweek : weekSplit) {
			if(weekday.equalsIgnoreCase(dayofweek))
				return true;
		}
		return false;
	}
	
}
