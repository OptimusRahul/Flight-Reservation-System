<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 <!DOCTYPE html>
<html lang="en">
<head>
	<title>Bootstrap Example</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	</style>
</head>
<body>
	<div class="container">
		<jsp:include page="/jsp/Navbar.jsp"/>	 
  		<div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    	<ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		      <li data-target="#myCarousel" data-slide-to="3"></li>
		      <li data-target="#myCarousel" data-slide-to="4"></li>
		    </ol>
	    <!-- Wrapper for slides -->
	    	<div class="carousel-inner">
				<div class="item active">
		        	<img src="./img/Beau.jpg" alt="Los Angeles" style="width:1300px; height:800px;"   class="img-responsive">
		      	</div>
	      		<div class="item">
	        		<img src="./img/burj-al-arab-wallpapers-28466-736187.jpg" style="width:1300px; height:800px;" class="img-responsive">
	      		</div>
		        <div class="item">
		        	<img src="./img/airplane.jpg" style="width:1300px; height:800px;" class="img-responsive">
		      	</div>
		       <div class="item">
		       		<img src="./img/wallpaperbro-149225.jpg"" alt="Los Angeles" style="width:1300px; height:800px;" class="img-responsive">
		       </div>	
			   <div class="item" style="background-image: url(./img/BackG.jpg); height: 800px; width: 1200px; color:aliceblue; text-align:center;">
					<p>
						<br><br><br><br><br><br><br><br><br><br><br><br>
						Falcon Airlines is an online travel domain established in May 2019 by a serial entrepreneur who possesses rich experience of 13 years in the tourism industry in both online and offline market with a broad exposure in the Indian and International arena.
						<br><br>
						Started from Gurugram Falcon Airlines is one of the fastest growing Indian OTA.
						The aim is to ensure that every individual can fly with the Best Price and to offer a versatile option of products.
						<br><br>
						We have launched our hotel business platform in August 2018 with multiple diversified products that will offer our customers the real value for money.
						<br><br>
						Our team consists of the most experienced and customer-centric travel experts that will always make sure a happy and easy experience for our users.
					</p>
			   </div>	
    		</div>
	<!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		</div>
		
		
		


</body>
</html>
