<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
	<jsp:include page="../jsp/BootStrapHeaders.jsp"/>
</head>
<body>
	<%
		String name = (String)session.getAttribute("Name");
	%>
	<nav class="navbar navbar-dark bg-primary navbar-expand-lg ">
		<a class="navbar-brand" href="#">Welcome</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Features</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Pricing</a>
				</li>
			</ul>
			<form action=".././LogoutAction" method="post">	
				<% if(name!=null){ %>
					<span class="navbar-text">Welcome to Indigo Airways</span>
					<input type="submit" class="btn btn-danger" value="Logout">
				<%} else { %>
					<span class="navbar-text">Welcome to Indigo Airways</span>
				<%} %>
			</form> 
		</div>
	</nav>	
</body>
</html>