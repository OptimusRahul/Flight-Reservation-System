<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
<link rel="stylesheet" href="dashstylesheet.css">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="script.js"></script>
</head>
<body>
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
			<span class="navbar-text">Welcome to Indigo Airways</span>
		</div>
	</nav>
	
	<div>
		<div class="card card-pos child_div" style="width: 18rem;">
			<img src="img_avatar.png" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				<a href="#" class="btn btn-primary">View Details</a>
			</div>
		</div>
		<div class="card list-pos child_div" style="width: 18rem;">
			<ul class="list-group list-group-flush">
				<li class="list-group-item">Book Tickets</li>
				<li class="list-group-item">View Ticket History</li>
				<li class="list-group-item">Cancel Ticket</li>
			</ul>
		</div>
	<div>
	
	<div>
		<div class="card card-pos child_div" style="width: 18rem;">
			<div id="login" class="tabcontent">
			<div class="card-header card text-center display-10" style="margin-left:auto; margin-right:auto;" id="login">
				Search
			</div>
			<div class="card-body">
				<form>
					<div class="form-group">
						<label for="exampleInputEmail1">Source</label>
						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Source">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Destination</label>
						<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Destination">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Date Of Journey</label>
						<input type="date" class="form-control" id="exampleInputPassword1" placeholder="date">
					</div>					
					<button type="button" class="btn btn-primary" onclick="myFunction()">Submit</button>
				</form>
			
			</div>
			</div>
		</div>

		<div class="card card-pos child_div" id="toggleLogin" style="width: 18rem; display:none;">
			<img src="img_avatar.png" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
				<a href="#" class="btn btn-primary">View Details</a>
			</div>
		</div>
</body>
</html>