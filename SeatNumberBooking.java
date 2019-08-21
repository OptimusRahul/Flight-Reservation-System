package com.TicketBooking;

public class SeatNumberBooking {
	
	public SeatNumberBooking() {
		
	}
	
	public static String findUnreservedSeats(int a[], int b[], int n, int m) { 
		String unreservedSeats="";
		for (int i = 0; i < n; i++){ 
			int j; 			
			for (j = 0; j < m; j++)
				if (a[i] == b[j]) 
					break;			
				if (j == m) {
					unreservedSeats += a[i]+" ";
				}
		}
		if(unreservedSeats.equals(""))
			return "N.A.";
		return unreservedSeats;
	} 
	
	public static int[] getSeatsToBeBooked(String arr[], int no) {
		String consecutiveVacantSeat="";
		String vacantSeats = "";
		int diff=0,i=0;
		for(i=0; i<arr.length-1;) {
			if((Integer.parseInt(arr[i+1])-Integer.parseInt(arr[i]))==1) {
				diff=1;
				consecutiveVacantSeat +=arr[i]+" "+arr[i+1]+" ";
				i=i+2;
			} else if((Integer.parseInt(arr[i+1])-Integer.parseInt(arr[i]))!=1) {
				diff=0;
				vacantSeats += " "+arr[i];
				i++;
			}
		}
		
		if(diff == 0 && i!=(arr.length)) vacantSeats += " "+arr[arr.length-1];
		if(diff == 1 && i!=(arr.length)) consecutiveVacantSeat += " "+arr[arr.length-1];
		
		/*System.out.println(vacantSeats);
		System.out.println((vacantSeats.trim()+" "+consecutiveVacantSeat.trim()).trim().split(" ").length+" "+no);
		
		System.out.println(consecutiveVacantSeat);
		System.out.println(consecutiveVacantSeat.trim().split(" ").length+" "+no);*/
		
		if(consecutiveVacantSeat.trim().split(" ").length >= no && consecutiveVacantSeat.equals("")==false) {
			String vacantArr[] = consecutiveVacantSeat.trim().split(" "); 
			return getSeatNumber(vacantArr , no);
		}
		else if((vacantSeats.trim()+" "+consecutiveVacantSeat.trim()).trim().split(" ").length >= no){
			String vacantArr[] = (vacantSeats.trim()+" "+consecutiveVacantSeat.trim()).trim().split(" "); 
			return getSeatNumber(vacantArr, no);
		}
		int noSeats[] = {-1};
		return noSeats;
	}
	
	public static int[] getSeatNumber(String arr[], int seatCount){
		int seatNum[] = new int[seatCount];
		for(int i=0; i<seatCount; i++)
				seatNum[i] = Integer.parseInt(arr[i]);
		return seatNum;
	}
	
	public static int[] getData(int totalSeats, int seatNum[], int travellers) {
		int arr[] = new int[totalSeats];
		int seatNumber[]=null;
		for(int i=1; i<totalSeats; i++) {
			arr[i] = i;
		}
		int reservedSeats[] = seatNum;
		String status = findUnreservedSeats(arr, reservedSeats, arr.length, reservedSeats.length);
		if(status.equals("N.A."))
			System.out.println("Not available");
		else {
			String seats[] = status.split(" ");
			int booking=travellers;
			if(seats.length < booking)
				System.out.println("NA");
			else{
				seatNumber = getSeatsToBeBooked(seats, booking);
				for(int i=0; i<seatNum.length; i++) {
					System.out.print(seatNum[i]+" ");
				}
			}
		}
		return seatNumber;
	}
}
