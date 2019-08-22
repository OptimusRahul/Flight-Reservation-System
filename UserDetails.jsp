<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.rounding
{
border-radius:20px;
}

</style>
<meta charset="ISO-8859-1">
<title>Airlines</title>
<link rel="stylesheet" href="../css/userStylesheet.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="dashscript.js"></script>
<script>
function myFunction() {
	var x = document.getElementById("toggleLogin");
	if (x.style.display === "none") {
		x.style.display = "block";
	} else {
		x.style.display = "none";
	}
}
</script>
<script>document.getElementById("login").click();</script>
</head>

<body style="background-image:url('../img/de415334320dd313b583016db0352e93.jpg');background:auto;">
	<jsp:include page="../jsp/Navbar.jsp"/>
	<%
	String obj = session.getAttribute("PassengerDetails").toString();
	System.out.println(obj);
		/*String obj = (String)session.getAttribute("PassengerDetails").toString();
		String details[] = obj.split(" ");
		for(int i=0; i<details.length; i++){}*/
	%>	
	<div class="card-box w-75">
		<div id="login" class="tabcontent">
		   	<div class="card-header text-center display-10" style="font-family:fantasy; margin-left:auto; margin-right:auto;" id="login">Details</div>
				<div class="card-body">
					<form action="">
						  <div class="product img-responsive">
	  						<img src="download.jpg" alt="Avatar"  class="avatar img-pos" align="middle" style="border-radius:250px width:50px height:50px;">
	 					   </div>
						   <br>
							<table style="width:100%">
  							<tr>
 						   		<!-- div class="col">
									<div class="row"-->
							    		<td>
									    	<label for="Name" class="block-opacity"><b>Name</b></label><br>
											<input type="text" class="rounding" placeholder="  First Name" name="fname" value="" required>
											<input type="text" class="rounding" placeholder="  Middle Name" name="mname">
		     	 							<input type="text" class="rounding" placeholder="  Last Name" name="lname" required>
    	 								</td>
									<!--  /div>
								</div-->
   						   </tr>
						   <tr>
						  	<!--div class="row"-->
							      	<td>
								      	<label for="Addresss"><b>Address</b></label><br>
								      	<input type="text" class="rounding" placeholder="  House.No" name="Address" required>
										<input type="text" class="rounding" placeholder="  Colony/Landmark" name="Address" required>
										<input type="text" class="rounding" placeholder="  City" name="Address" required>
										<input type="text" class="rounding" placeholder="  State" name="Address" required>
										<input type="text" class="rounding" placeholder="  Pin" name="Pin" required>
									</td>									
							  <!--/div-->
						   </tr>
					           <tr>
						  	<!--div class="row"-->
			              			<td>
			              				<label for="Phone Number"><b>Phone Number</b></label>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<br>
                                    	<input type="text" class="rounding" placeholder="  Phone Number" name="Phone Number" required></td>
							  <!-- /div-->
						    </tr>
						   <tr>
						  	<!-- div class="row" -->
								<td><label for="Email Id"><b>Email Id</b></label><br>
								<input type="text" class="rounding" placeholder="  Email Id" name="Email Id" required></td>
							<!--/div -->
						   </tr>

						  
							<tr align="center">
							<td><button type="submit" class="btn btn-primary" style="opacity:1;">Submit</button>
							<button type="reset" class="btn btn-danger"> Reset </button></td>
							</tr>
							</table>
					</form>								
				<!-- /div -->
			</div>
		</div>
		</div>
</body>
</html>