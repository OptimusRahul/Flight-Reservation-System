<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet" %>
<%@page import="com.Connection.DbConnection"%>
<%@page import="java.sql.SQLException" %>
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
<script>
/*function preventDupes( select, index ) {
    var options = select.options,
        len = options.length;
    while( len-- ) {
        options[ len ].disabled = false;
    }
    select.options[ index ].disabled = true;
    if( index === select.selectedIndex ) {
        options[index].disabled=true;
        this.selectedIndex = 0;
    }
}

var select1 = select = document.getElementById( 'select1' );
var select2 = select = document.getElementById( 'select2' );

select1.onchange = function() {
    preventDupes.call(this, select2, this.selectedIndex );
    preventDupes.call(this, select3, this.selectedIndex );
};

select2.onchange = function() {
    preventDupes.call(this, select1, this.selectedIndex );
    preventDupes.call(this, select3, this.selectedIndex );
};*/
</script>
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
	<%
		Connection con = DbConnection.getConnection();
		try {
				PreparedStatement source_pst = con.prepareStatement("select city, airport_code from airport");
				ResultSet source_rs = source_pst.executeQuery();
	%>
		
	<div class="card card-pos child-div" style="width: 18rem;">
		<div id="login" class="tabcontent">
			<div class="card-header text-center display-10" style="margin-left:auto; margin-right:auto;" id="login">
				Search
			</div>
			<div class="card-body">
				<form action="../FlightSearch" method="post">
					<div class="form-group">
						<label  for="exampleInputEmail1">Source : </label><br>
						<select name="source" id="select1">
							<%while(source_rs.next()) { %>
								<option value="none" selected disabled hidden>Select an Option</option> 
								<option class="form-control" value="<%=source_rs.getString(2)%>"><%=source_rs.getString(1)%>(<%=source_rs.getString(2)%>)</option>
							<%}%>	
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Destination : </label>
						<select name="destination" id="select2">
							<%
							PreparedStatement dest_pst = con.prepareStatement("select city, airport_code from airport");
							ResultSet destination_rs = dest_pst.executeQuery();
							while(destination_rs.next()) { %>
								<option value="none" selected disabled hidden>Select an Option</option>
								<option value="<%=destination_rs.getString(2)%>"><%=destination_rs.getString(1)%>(<%=destination_rs.getString(2)%>)</option>
							<%}%>	
						</select>
							<%
								}catch(SQLException e) {
									e.printStackTrace();
								}
							%>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Class : </label>
						<select name="class">
						  <option value="Business">Business</option>
						  <option value="PremiumEconomy">Premium Economy</option>
						  <option value="Economy">Economy</option>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">No. Of Passengers : </label>
						<select name="travellers">
						 	<%for(int i=1; i<=5; i++){ %>
							  	<option value="<%=i%>"><%=i%></option>
						  	<%} %>
						</select>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Date Of Journey : </label>
						<input type="date" class="form-control" id="exampleInputPassword1" name="date" placeholder="date" name="date">
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
		
		String id="";
				
		if(flag.equals("true") && request.getParameter("source")!=null){
			ArrayList<Object> list = new ArrayList<Object>(); 
			//id = (String)session.getAttribute("ids");
			System.out.println(id);
			list.add(request.getParameter("source").replace("["," ").replace("]"," ").trim());
			Iterator<Object> it = list.iterator();
			if(list!=null){ %>
				<br>
				<div class="card card-pos w-75" id="toggleLogin" style="margin-top:600px;margin-left:auto; margin-right:auto; width: 18rem;">
					<div class="card-header text-center display-10 w-100" style="margin-left:auto; margin-right:auto;" id="login">
						Flight Between Source and Destination
					</div>
					<br>
				<%
					String data[] = it.next().toString().trim().split(",");
					//String ids[] = id.split(" ");
				%>
				<%for(int i=0; i<data.length; i++){%>
					<div>
						<table>
							<tr>
								<th>Flight Type</th>
								<th>Departure</th>
								<th></th>
								<th>Arrival</th>
								<th>Seat Availability</th>
								<th></th>
							</tr>
							<%
								String arr[] = data[i].replace("["," ").replace("]"," ").trim().split(" ");

							%>
							<tr>
								<td><h1><%out.print(arr[0]);%></h1></td>
								<td><h1><%out.print(arr[5]);%></h1><br><h5><%out.print(arr[6]);%></h5></td>
								<td>
									<img src="../img/airplane-shape-1.png" class="img-thumbnail" style="border:0;">
									<br>
									<small>
										<strong>
											<%
												String time=arr[9];
												if(time.length()<4){
													time = " "+time;
												}
												out.print(time.substring(0,2)+"hrs : "+time.substring(2,4)+" min");
											%>
										</strong>
									</small>
								</td>
								<td>
									<h1><%out.print(arr[7]);%></h1>
									<br>
									<h5><%out.print(arr[8]);%></h5>
								</td> 
								<td><h1><%out.print(arr[3]);%></h1></td>
								<td><form action="../RedirectToBookingJSP?" method="post">
										<input type="hidden" value="">
										<button type="submit" class="btn btn-primary" name="book-btn" value="<%=i%>">Book Now</button>
									</form>
								</td>
							</tr>
						</table>
					</div>
					<br>
					<hr>
					<br>
				<%}
			}
		}%>	
		</div>
</body>
</html>