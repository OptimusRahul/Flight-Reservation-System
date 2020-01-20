<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
	<jsp:include page="../jsp/BootStrapHeaders.jsp"/>
	<style>
		body {font-family: Arial, Helvetica, sans-serif;}
		* {box-sizing: border-box;}
		
		#backgroundimage
		{
		   height: auto;
		   left: 0;
		   margin: 0;
		   min-height: 100%;
		   min-width: 674px;
		   padding: 0;
		   position: fixed;
		   top: 0;
		   width: 100%;
		   z-index: -1;
		}
		
		.bg-img {
		  /* The image used */		
		  min-height: 400px;
		  min-width:600px;
		  
		  /* Needed to position the navbar */
		  position: relative;
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
		
		p
		{
		width:30%;
		margin-left:35%;
		margin-right:35%;
		}
		
		.topnav a:hover {
		  background-color: #ddd;
		  color: black;
		}
		
		.topnav-right
		{
		  float: right;
		}	
		.searchPos{
		
		}
		.dropbtn {
		  background-color: #4CAF50;
		  color: white;
		  padding: 16px;
		  font-size: 16px;
		  border: none;
		  cursor: pointer;
		}
		
		.dropbtn:hover, .dropbtn:focus {
		  background-color: #3e8e41;
		}
		
		.dropdown {
		  float: right;
		  position: relative;
		  display: inline-block;
		}
		
		.dropdown-content {
		  display: none;
		  position: absolute;
		  background-color: #f1f1f1;
		  min-width: 160px;
		  overflow: auto;
		  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		  right: 0;
		  z-index: 1;
		}
		
		.dropdown-content a {
		  color: black;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		}
		
		.dropdown a:hover {background-color: #ddd;}
		
		.show {display: block;}
	</style>
	
	<script>
		function myFunction1() {
		  document.getElementById("myDropdown").classList.toggle("show");
		}
		
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
	</script>
</head>
<body>
	<%
		String name = (String)session.getAttribute("Name");
	%>
	<div class="topnav">
		<%if(name!=null){%>
	      <a href="../jsp/Dashboard.jsp">Home</a>
	      <a href="../jsp/ViewHistory.jsp">View Ticket History</a>
	      <a href="../jsp/UserDetails.jsp">User Details</a>
	      <form action=".././LogoutAction" method="post">
			<input type="submit" class="btn btn-danger" value="Logout" style=" margin-top:5px;margin-left:850px">
		</form> 
	      <%} else { %>
		  	<a href="../Welcome.jsp">Home</a>
			<div class="topnav-right">
				<a href="./jsp/Login.jsp">Sign In</a>
				<a href="#Sign Up">Sign Up</a>
			</div>
			<%} %>
		</div>
		
		
</body>
</html>