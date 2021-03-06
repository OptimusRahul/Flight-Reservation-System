<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Pass2
</title>

<style>

.text-shadow
{
  text-shadow: 2px 2px black;
}

.par
{
  text-shadow: 1px 1px black;
}


img {
  border-radius: 50%;
}


form {
    min-height: 100%;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    font-family: "Open Sans", Verdana, Arial, sans-serif;
}

.t-airport {
    font-size: 48px;
    margin: 0;
    padding-bottom: 5px;
    text-align: center;
    color: wheat;
}

.p-city {
    text-align: center;
    margin: 0;
    color: wheat;
}

.box {
    padding-top: 10px;
    padding-left: 20px;
    padding-right: 20px;
    padding-bottom: 20px;
    border-radius: 3px;
    width: 400px;
    height
    display: flex;
    flex-direction: column;
    background-color: #fff;
    margin-bottom: 20px;
}

.local {
    position: relative;
    width: 150px;
    height: 150px;
    top: 60px;
}

.siglas {
    width: 100%;
    display: flex;
    justify-content: space-around;
    color:white;
}

.to {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.airplane {
    color: #34495E;
    width: 100%;
    display: flex;
    justify-content: center;
}

.from {
    width: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.information_person {
    padding-top: 20px;
    width: 100%;
    display: flex;
    justify-content: space-around;
    font-family: "Spectral", Verdana, Arial, sans-serif;
}

.information_airplane {
    padding-top: 20px;
    width: 100%;
    display: flex;
    justify-content: space-around;
    font-family: "Spectral", Verdana, Arial, sans-serif;
}

.t-info {
    font-weight: 700;
    font-size: 18px;
}

.p-info {
    margin-top: 5px;
    font-size: 17px;
}

.code {
    padding-top: 20px;
    padding-bottom: -40px;
    width: 100%;
    display: flex;
    justify-content: center;
    flex-direction: column;
}

.codebar {
    width: 100%;
    height: 100px;
}

.p-thankyou {
    margin: 0;
    margin-bottom: 10px;
    text-align: center;
    font-family: "Spectral", monospace;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.6); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}







/* Position the navbar container inside the image */
.container {
  position: absolute;
  margin: 20px;
  width: auto;
}

/* The navbar */
.topnav {
  overflow: hidden;
  background-color: #333;
}

/* Navbar links */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav-right
{
  float: right;
}




</style>
</head>






<body style="background-image:url('D:/Users/SA20093853/Eclipse/Servlets/Flr/WebContent/img/Airplane.jpg'); margin:0px" >

<div class="topnav">
      <a href="#Home">Home</a>
      <a href="#Features">Features</a>
      <a href="#Book Ticket">Book Ticket</a>
      <a href="#Cancel Ticket">Cancel Ticket</a>
      <a href="#Pricing">Pricing</a>
      <a href="#Flight Details">Flight Details</a>
	<div class="topnav-right">
		<a href="#Sign In">Sign In</a>
		<a href="#Sign Up">Sign Up</a>
	</div>
</div> 



<form>


<div>
     <img class="local background-local" src="D:/Users/SA20093853/Eclipse/Servlets/Flr/WebContent/img/FalconLogo.jpg">
</div>


<div class="box bg-text">
<%
/*
source="+namea+"&destination="+nameb+"&passenger="+passengerName+
    								"&date="+flight_date+"&time="+time+"&flight_num="+flight_num+"&seatNum"+getSeatNumber);
*/
	String source = request.getParameter("source");
	String dest = request.getParameter("destination");
	String passengerName = request.getParameter("passenger");
	String date = request.getParameter("date");
	String time = request.getParameter("time");
	String num = request.getParameter("flight_num");
	String seatNum = request.getParameter("seatNum");
%>
    <div class="siglas text-shadow">
        <div class="to">
            <h1 class="t-airport">From</h1>
            <p class="p-city par"><%out.println(source);%></p>
        </div>
        <div class="airplane">
            <i class="fa fa-plane fa-3x" aria-hidden="true"></i>
        </div>
        <div class="from">
            <h1 class="t-airport">Destination</h1>
            <p class="p-city par"><%out.println(dest);%></p>
        </div>
    </div>
    <div class="information_person">
        <div class="passenger">
            <span class="t-info">Passenger</span>
            <p class="p-info"><%out.println(passengerName);%></p>
        </div>
        <div class="departure">
            <span class="t-info">Date & Time</span>
            <p class="p-info"><%out.println(date);%>  <%out.println(time);%>hrs</p>
        </div>
    </div>
    <div class="information_airplane">
        <div class="flight">
            <span class="t-info">Flight No</span>
            <p class="p-info"><%out.println(num);%></p>
        </div>
        <div class="gate">
            <span class="t-info">Gate</span>
            <p class="p-info">B3</p>
        </div>
        <div class="seat">
            <span class="t-info">Seat No</span>
            <p class="p-info"><%out.println(seatNum);%></p>
        </div>
        <div class="boarding">
            <span class="t-info">Boarding Time</span>
            <p class="p-info"><%out.println(time);%></p>
        </div>
    </div>
    <div class="code">




        <p class="p-thankyou">Life is a journey, travel it well. Like a smile in the sky!</p>
    </div>
</div>
</form>
</body>
</html>