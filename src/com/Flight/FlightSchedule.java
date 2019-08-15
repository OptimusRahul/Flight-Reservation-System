package com.Flight;

public class FlightSchedule {
	
	public static int schedule[] = {0,0,0,0,0,0,0};
	
	public static int[] getSchedule(String weekdays) {
		String weekSplit[] = weekdays.split("_");
		for(int i=0; i<weekSplit.length; i++) {
			String str = weekSplit[i];
			switch(str) {
				case "MON":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "TUE":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "WED":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "THU":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "FRI":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "SAT":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
							
				case "SUN":
							if(schedule[0] == 0)
								schedule[0] = 1;
							break;
			}
		}
		return schedule;
	}
	
}
