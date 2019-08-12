package com.PassengerDetails;

public class PassengerDetails {
	
	String Name, Address, PhNo, EmailID;
	
	public PassengerDetails(String name, String address, String phNo, String emailID) {
		this.Name = name;
		this.Address = address;
		this.PhNo = phNo;
		this.EmailID = emailID;
	}
	
	@Override
	public String toString() {
		return Name + " " + Address +" "+ PhNo+" "+EmailID;
	}
}