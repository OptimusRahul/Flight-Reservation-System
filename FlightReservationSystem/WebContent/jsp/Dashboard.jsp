<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
</head>
<body>
	<%
		String name = (String)session.getAttribute("Name");
	%>
	<jsp:include page="../jsp/Navbar.jsp"/>		
	<div class="card card-pos child_div" style="width: 18rem;">
		<img src="../img/img_avatar.PNG" class="card-img-top" alt="...">
		<div class="card-body">
			<h5 class="card-title">
			<%=name %>
			</h5>
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			<form action="../UserDetails" method=post>
				<button type="submit" class="btn btn-primary">View Details</button>
			</form>
		</div>
	</div>
	
	<div class="card list-pos child_div" style="width: 18rem;">
		<ul class="list-group list-group-flush">
			<li class="list-group-item">Book Tickets</li>
			<li class="list-group-item">View Ticket History</li>
			<li class="list-group-item">Cancel Ticket</li>
		</ul>
	</div>
	<jsp:include page="../jsp/Search.jsp"/>
</body>
</html>