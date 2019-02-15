<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<link rel="shortcut icon" href="favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Playfair+Display:400,700,400italic,700italic|Merriweather:300,400italic,300italic,400,700italic' rel='stylesheet' type='text/css'>

<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Simple Line Icons -->
	<link rel="stylesheet" href="css/simple-line-icons.css">
	<!-- Datetimepicker -->
	<link rel="stylesheet" href="css/bootstrap-datetimepicker.min.css">
	<!-- Flexslider -->
	<link rel="stylesheet" href="css/flexslider.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/custom.css">
	
	<script src="js/modernizr-2.6.2.min.js"></script>
</head>
<body>
	<form action="OrderServlet" method="GET">
		
		<input type="hidden" name="command" value="PAYMENT" />
		
		<div id="fh5co-contact" data-section="reservation">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Payment</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 to-animate-2">
						<h3>EFT Payment</h3>
						<div class="form-group">
							<label for="gender" class="sr-only">Bank Name</label>
							<select class="form-control" name="bankname">
							  <option value="Absa">Absa</option>
							  <option value="FNB">FNB</option>
							  <option value="STRD">Stardard Bank</option>
							  <option value="CAPITEC">Capitec</option>
							</select>
						</div>
						<div class="form-group ">
							<label for="card_number" class="sr-only">Card Number</label>
							<input name="cardnumber" class="form-control" placeholder="Card Number" type="text">
						</div>
							
						<div class="form-group ">
							<label for="branchcode" class="sr-only">Branch Code</label>
							<input name="branchcode" class="form-control" placeholder="Branch Code" type="text">
						</div>
						<div class="form-group ">
							<input class="btn btn-primary" value="Confirm" type="submit">
						</div>
					</div>
				</div>
			</div>
		</div>
</form>

	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Bootstrap DateTimePicker -->
	<script src="js/moment.js"></script>
	<script src="js/bootstrap-datetimepicker.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Flexslider -->
	<script src="js/jquery.flexslider-min.js"></script>
	<script>
		$(function () {
	       $('#date').datetimepicker();
	   });
	</script>
	<!-- Main JS -->
	<script src="js/main.js"></script>
	
</body>
</html>