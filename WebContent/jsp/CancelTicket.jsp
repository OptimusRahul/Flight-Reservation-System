<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Cancel Ticket</title>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="stylesheet.css">
<link rel="stylesheet" href="dashstylesheet.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../js/script.js"></script>
</head>
<body>
	<jsp:include page="../jsp/Navbar.jsp"/>	
	<div class="card card-box w-50 card-pos" style="width: 18rem;">
		<div class="card-body">
			<h5 class="card-title">TicketID</h5>
			<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
			<form>
				<div class="row">
					<div class="col">
						<h5 class="card-title">Source</h5>
						<input type="text" class="form-control" placeholder="Source">
					</div>
					<div class="col">
						<h5 class="card-title">Destination</h5>
						<input type="text" class="form-control" placeholder="Destination">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col">
						<h5 class="card-title">Date of Journey</h5>
						<input type="date" class="form-control" placeholder="Source">
					</div>
				</div>
				<br>
				<button type="submit" class="btn btn-primary">Submit</button>&nbsp
				<button type="Reset" class="btn btn-danger">Reset</button>
			</form>
			<br>
		</div>
	</div>
</body>
</html>