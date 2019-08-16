<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Object> list = new ArrayList<Object>(); 
		list.add(session.getAttribute("data"));
		Iterator<Object> it = list.iterator();
	%>
	<div class="card card-pos child_div w-50" id="toggleLogin" style="width: 18rem; /*display:none;*/">
		<div class="card-header text-center display-10" style="margin-left:auto; margin-right:auto;" id="login">
			Flight Between Source and Destination
		</div>
		<% while(it.hasNext()){ %>
			<div class="card-body">
				<%String arr[] = it.next().toString().split(" "); %>
					<h1>Flight No.: <%out.print(arr[0]);%></h1>
					<h1>Airline: <%out.print(arr[1]);%></h1>
					<h1>Departure_airport_code: <%out.print(arr[3]);%></h1>
					<h1>scheduled_departure_time: <%out.print(arr[4]);%></h1>
					<h1>arrival_airport_code <%out.print(arr[5]);%></h1> 
					<h1>scheduled_arrival_time  <%out.print(arr[6]);%></h1>
					<h1>flight_duration  <%out.print(arr[7]);%></h1>
			</div>
		<%}%>
	</div>
</body>
</html>