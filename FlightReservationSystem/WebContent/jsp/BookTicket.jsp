<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Book Ticket</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/dashstylesheet.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../js/script.js"></script>
</head>
<body>
	<jsp:include page="../jsp/Navbar.jsp"/>
	<%
		int travellers = Integer.parseInt((String)session.getAttribute("passengers"));
	%>
	<div class="card w-50" style="margin-top:100px; margin-left:auto; margin-right:auto; width: 18rem;">
			<h5 class="card-header">Passenger Details</h5>
			<form action="../BookTicket" method="post">
				<br>
				<%for(int i=1; i<=travellers; i++){ %>
					<br>
					<h4 class="card-title" style="margin-left:10px;">Passenger <%out.print(i);%>. Details</h4>
					<br>
					<div class="row" style="margin-left:auto; margin-right:auto;">
					<div class="col">
						<h5 class="card-title">First Name</h5>
						<input type="text" class="form-control" name="firstName<%=i%>" placeholder="First Name">
					</div>
					<div class="col">
						<h5 class="card-title">Middle Name</h5>
						<input type="text" class="form-control" name="middleName<%=i%>" placeholder="Middle Name">
					</div>
					<div class="col">
						<h5 class="card-title">Last Name</h5>
						<input type="text" class="form-control" name="lastName<%=i%>" placeholder="Last Name">
					</div>
				</div>
				<%}%>
				<hr>
				<div class="row" style="margin-left:auto; margin-right:auto;">
					<div class="col">
						<h5 class="card-title">Mobile Number</h5>
						<input type="tel"class="form-control" placeholder="Enter Mobile Number" name="mobno" style="width:15em;">
					</div>
					<div class="col">
						<h5 class="card-title">Email</h5>
						<input type="email"class="form-control" placeholder="Enter email" name="email" min="1" max="100" style="width:15em;">
					</div>
				</div>
				<hr>
				
				<div style="margin-left:250px; margin-right:auto;">
					<button type="submit" class="btn btn-primary">Submit</button>&nbsp
					<button type="Reset" class="btn btn-danger">Reset</button>
				</div>
			</form>
			<br>
		</div>

</body>
</html>