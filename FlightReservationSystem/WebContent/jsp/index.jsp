<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines</title>
<link rel="stylesheet" href="./css/stylesheet.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="./js/script.js" ></script>
<script>document.getElementById("login").click();</script>
</head>
<body>

	<div class="jumbotron">
	  <h1 class="display-4">Welcome to Indigo Airlines</h1>
	  <p class="lead">Experience a hassle free booking and travel with us.</p>
	  <hr class="my-4">
	  <p>Click Below to explore more.</p>
	  <a class="btn btn-primary btn-lg" onclick="myFunction()">Click here</a>
	</div>
	<div class="card card-box" id="toggleLogin" style="display:none;">
		<div class="tab">
			<button class="tablinks" onclick="openCity(event, 'login')">Login</button>
			<button class="tablinks" onclick="openCity(event, 'signup')">SignUp</button>
		</div>
		<div id="login" class="tabcontent" style="display:block;" id="def">
			<div class="card-header card text-center display-4" id="login">
				Login
			</div>
			<div class="card-body">
				<form action="./LoginAction" method="post">
					<div class="form-group">
						<label>Username</label>
						<input type="text" class="form-control" id="username" name="username" placeholder="Enter Username">
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label>
						<input type="password" class="form-control" id="password" name="password" placeholder="Password">
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>			
			</div>
		</div>
		<div id="signup" class="tabcontent">
			<div class="card-header card text-center display-4" id="signup">
				SignUp
			</div>
			<div class="signup-card">
				<form>
				  <div class="form-row">
				    <div class="col-md-4 mb-3">
				      <label for="validationServer01">First name</label>
				      <input type="text" class="form-control is-valid" id="validationServer01" placeholder="First name" value="Mark" required>
				      <div class="valid-feedback">
				        Looks good!
				      </div>
				    </div>
				    <div class="col-md-4 mb-3">
				      <label for="validationServer02">Last name</label>
				      <input type="text" class="form-control is-valid" id="validationServer02" placeholder="Last name" value="Otto" required>
				      <div class="valid-feedback">
				        Looks good!
				      </div>
				    </div>
				    <div class="col-md-4 mb-3">
				      <label for="validationServerUsername">Username</label>
				      <div class="input-group">
				        <div class="input-group-prepend">
				          <span class="input-group-text" id="inputGroupPrepend3">@</span>
				        </div>
				        <input type="text" class="form-control is-invalid" id="validationServerUsername" placeholder="Username" aria-describedby="inputGroupPrepend3" required>
				        <div class="invalid-feedback">
				          Please choose a username.
				        </div>
				      </div>
				    </div>
				  </div>
				  <div class="form-row">
				    <div class="col-md-6 mb-3">
				      <label for="validationServer03">City</label>
				      <input type="text" class="form-control is-invalid" id="validationServer03" placeholder="City" required>
				      <div class="invalid-feedback">
				        Please provide a valid city.
				      </div>
				    </div>
				    <div class="col-md-3 mb-3">
				      <label for="validationServer04">State</label>
				      <input type="text" class="form-control is-invalid" id="validationServer04" placeholder="State" required>
				      <div class="invalid-feedback">
				        Please provide a valid state.
				      </div>
				    </div>
				    <div class="col-md-3 mb-3">
				      <label for="validationServer05">Zip</label>
				      <input type="text" class="form-control is-invalid" id="validationServer05" placeholder="Zip" required>
				      <div class="invalid-feedback">
				        Please provide a valid zip.
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="form-check">
				      <input class="form-check-input is-invalid" type="checkbox" value="" id="invalidCheck3" required>
				      <label class="form-check-label" for="invalidCheck3">
				        Agree to terms and conditions
				      </label>
				      <div class="invalid-feedback">
				        You must agree before submitting.
				      </div>
				    </div>
				  </div>
				  <button class="btn btn-primary" type="submit">Submit form</button>
				</form>
			</div>			
		</div>
	</div>
</body>
</html>