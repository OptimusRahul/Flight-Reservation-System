<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.Connection.DbConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th, td{
  border: 1px solid white;
  border-collapse: collapse;
  margin-left:auto;
  padding-left:40px;
  margin-right:auto;  
}
</style>
</head>
<body>
	<jsp:include page="../jsp/Navbar.jsp"/>
	<div class="card w-75">
  		<div class="card-header" style="text-align:center">
    		Ticket History
  		</div>
  		

		<%	
			Connection con = DbConnection.getConnection();
			try{
				PreparedStatement pst = con.prepareStatement("Select * from seat_reservation");
				ResultSet rs = pst.executeQuery();
				int i=1;
				while(rs.next()){
					System.out.println("hi");
			%>
			<div class="card-body">
  			<div>
		    <table>
		    	
		    	<tr>
		    		<td><%out.println(i++);%></td>
			    	<td><%out.println(rs.getString("booking_id"));%></td>
			    	<td><%out.println(rs.getString("flight_num"));%></td>
			    	<td><%out.println(rs.getString("flight_date"));%></td>
			    	<td><%out.println(rs.getString("seat_num"));%></td>
			    	<td><%out.println(rs.getString("cust_name"));%></td>
			    	<td><%out.println(rs.getString("cust_phone"));%></td>
			    	<td><%out.println(rs.getString("status"));%></td>
		    		<td>
			    		<form action="" method="post">
							<input type="hidden" value="">
							<button type="submit" class="btn btn-primary" name="book-btn" value="">Cancel</button>
						</form>
					</td>
				</tr>
		    </table>
	  	</div>
	  	</div>
					
				
			<%}
		}catch(SQLException e){
			e.printStackTrace();
		}%>
  		
	</div>

</body>
</html>