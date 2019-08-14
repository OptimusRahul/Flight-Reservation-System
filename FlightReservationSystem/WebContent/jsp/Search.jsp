<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
<link rel="stylesheet" href="../css/dashstylesheet.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../js/script.js"></script>
<style>
table, th, td {
  border: 1px solid gray;
  border-collapse: collapse;
 
}
</style>
</head>
<body>
	<div class="card card-pos child_div" style="width: 18rem;">
		<div id="login" class="tabcontent">
			<div class="card-header text-center display-10" style="margin-left:auto; margin-right:auto;" id="login">
				Search
			</div>
			<div class="card-body">
				<form action="../FlightSearch" method="post">
					<div class="form-group">
						<label for="exampleInputEmail1">Source</label>
						<input type="text" class="form-control" id="source" name="source" aria-describedby="emailHelp" placeholder="Source">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Destination</label>
						<input type="text" class="form-control" id="destination" name="destination" placeholder="Destination">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Date Of Journey</label>
						<input type="date" class="form-control" id="exampleInputPassword1" placeholder="date" name="date">
					</div>					
					<button type="submit" class="btn btn-primary" name="data" value="searchData"><!--onclick="myFunction()"-->Submit</button>
				</form>		
			</div>
		</div>
	</div>
	
	<%
		String flag = "false";
		flag = request.getParameter("flag");
		if(flag == null){
			flag = "false";
		}
		
		if(flag.equals("true")){
			ArrayList<Object> list = new ArrayList<Object>(); 
			list.add(request.getParameter("source"));
			Iterator<Object> it = list.iterator();
	%>
	<% if(list!=null){ %>
		<div class="card card-pos child_div" id="toggleLogin" style="width: 18rem; /*display:none;*/">
			<div class="card-header text-center display-10" style="margin-left:auto; margin-right:auto;" id="login">
				Flight Between Source and Destination
			</div>
		</div>
			<%String data[] = it.next().toString().trim().split(","); %>
			<%for(int i=0; i<data.length; i++){%>
				<div class="card w-75">
					<table>
						<tr>
							<th>Flight No.</th>
							<th>Airline</th>
							<th>Departure Airport</th>
							<th>Departure Time</th>
							<th>Arrival Airport</th>
							<th>Arrival Time</th>
							<th>Flight Duration</th>
							<th>Seat Availability</th>
							<th>Book</th>
						</tr>
						<%String arr[] = data[i].replace("["," ").replace("]"," ").trim().split(" ");%>
						<tr>
							<td><%out.print(arr[0]);%></td>
							<td><%out.print(arr[1]);%></td>
							<td><%out.print(arr[3]);%></td>
							<td><%out.print(arr[4]);%></td>
							<td><%out.print(arr[5]);%></td> 
							<td><%out.print(arr[6]);%></td>
							<td><%out.print(arr[7]);%></td>
							<td></td>
							<td><button type="submit" class="btn btn-primary" name="data" value="searchData">Book Now</button></td>
						</tr>
					</table>
				</div>
				<br>
				<hr>
				<br>
			<%}%>
		
	<%	}
	}
	%>	
</body>
</html>