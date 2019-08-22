<%@page import="java.util.ArrayList"%>
<%@page import="com.TicketBooking.TicketBooking"%>
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
			String uname = (String)session.getAttribute("Name");
			Connection con = DbConnection.getConnection();
			ArrayList<Object> al = new ArrayList<Object>();
			try{
				PreparedStatement pst = con.prepareStatement("Select * from seat_reservation where uname=?");
				pst.setString(1,uname);
				ResultSet rs = pst.executeQuery();
				int i=0,c=0,j=0;
				while(rs.next()){
			%>
			<div class="card-body">
  			<div>
  			<form action="../CancelTicket" method="post">
			    <table>
			    	<tr>
			    		<td><%out.println(i++);%></td>
				    	<td><%String bk = rs.getString("booking_id");out.println(rs.getString("booking_id"));%></td>
				    	<td><%String fn = rs.getString("flight_num");out.println(rs.getString("flight_num"));%></td>
				    	<td><%String fd = rs.getString("flight_date");out.println(rs.getString("flight_date"));%></td>
				    	<td><%String sn = rs.getString("seat_number");out.println(rs.getString("seat_number"));%></td>
				    	<td><%String cn = rs.getString("customer_name");out.println(rs.getString("customer_name"));%></td>
				    	<td><%String cp = rs.getString("customer_phone");out.println(rs.getString("customer_phone"));%></td>
				    	<td><%String un = rs.getString("uname");out.println(rs.getString("uname")); %></td>
				    	<td><%String st = rs.getString("status");out.println(rs.getString("status"));%></td>
			    		<td>
			    			<%
			    				TicketBooking obj = new TicketBooking(bk, fn, fd, sn, cn, cp, un, st);
			    				al.add(c++,obj);
			    			%>
							<button type="submit" class="btn btn-primary" name="book-btn" value="<%=j++%>">Cancel</button>
						</td>
					</tr>
		    	</table>	
		    </form>
	  	</div>
	  	</div>				
		<%
			}
			session.setAttribute("list", al);
		}catch(SQLException e){
			e.printStackTrace();
		}
		%>
  		
	</div>

</body>
</html>