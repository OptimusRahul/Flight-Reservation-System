<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Clean Modal Login Modal Form</title>
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
    body {
		font-family: 'Varela Round', sans-serif;
		background-image: url("../img/Fl2.jpg");
	}
	.mode21
	{
		background-image: url("../img/Just Go555.jpg");
		background-size: cover;
		height: 600px;
	}
	.modal-login {
		width: 350px;
	}
	.modal-login .modal-content {
		padding: 20px;
		border-radius: 1px;
		border: none;
	}
	.modal-login .modal-header {
		border-bottom: none;
        position: relative;
		justify-content: center;
	}
	.modal-login h4 {
		text-align: center;
		font-size: 26px;
	}
    .modal-login .form-group {
        margin-bottom: 20px;
    }
	.modal-login .form-control, .modal-login .btn {
		min-height: 40px;
		border-radius: 30px; 
        font-size: 15px;
        transition: all 0.5s;
	}
    .modal-login .form-control {
        font-size: 13px;
    }
    .modal-login .form-control:focus {
        border-color: #a177ff;
    }
	.modal-login .hint-text {
		text-align: center;
		padding-top: 10px;

		color: white;
  		text-shadow: 0px 0px 2px black, 2px 2px 4px black;
	}
	.modal-login .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}
	.modal-login .btn {
		background: #a177ff;
		border: none;
		line-height: normal;
	}
	.modal-login .btn:hover, .modal-login .btn:focus {
		background: #8753ff;
	}
	.modal-login .hint-text a {
		color: white;
  		text-shadow: 0px 0px 2px black, 2px 2px 4px black;
	}
	.trigger-btn {
		display: inline-block;
		margin: 100px auto;
	}
</style>
</head>
<body>
<div class="text-center">
	
	<div class="modal-dialog modal-login">
		<div class="modal-content mode21">
			<div class="modal-header">				
				<h4 class="modal-title">Sign in</h4>
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
			</div>
			<div class="modal-body">
				<form action="../LoginAction" method="post">
					<div class="form-group">
						<input type="text" class="form-control" id="username" name="username" placeholder="Enter Username" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Sign in">
					</div>
				</form>				
				<p class="hint-text small">Dont have an account! <a href="#">Sign up</a></p>
			</div>
		</div>
	</div>
</div>     
</body>
</html>                            

