<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Sphatlo List</title>

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
<!--
<div class="container">
		<table>
			<tr>
				<th>Name</th>
				<th>Surname</th>
				<th>Gender</th>
				<th>Mobile</th>
				<th>Email</th>
			</tr>
			
			<c:forEach var="sphatlo" items="${SPHATLO_LIST}">
			<tr>
				<td>${sphatlo.name}</td>
				<td>${sphatlo.description}</td>
				<td>${sphatlo.price}</td>
			</tr>
			</c:forEach>
		</table>
	</div>
  -->
	<div id="fh5co-container">
		<div id="fh5co-menus" data-section="menu">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Menu</h2>
						<p class="sub-heading to-animate">After a good dinner one can forgive anybody, even one's own relations.</p>
					</div>
				</div>
				<div class="row row-padded">
					<div class="col-sm-9">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Kota</h2>
							<ul>
							<c:forEach var="sphatlo" items="${SPHATLO_LIST}">
							
								<c:url var="buy" value="cart">
									<c:param name="command" value="SPHATLO"></c:param>
									<c:param name="sphatloId" value="${sphatlo.sphatloId}"></c:param>
								</c:url>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>${sphatlo.name}</h3>
											<p>${sphatlo.description}</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R${sphatlo.price}
									</div>
									<div class="fh5co-food-btnAdd">
										<p><a href="${buy}" class="btn btn-primary btn-outline">Buy</a></p>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4 col-md-offset-4 text-center to-animate-2">
						<p><a href="#" class="btn btn-primary btn-outline">Build Your Kota</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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