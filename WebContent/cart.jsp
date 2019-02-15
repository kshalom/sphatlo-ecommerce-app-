<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Cart</title>

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
						<h2 class="heading to-animate">Your Order</h2>
					</div>
				</div>
				<div class="row row-padded">
					<div class="col-sm-9">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Drinks</h2>
							<ul>
							<c:set var="total" value="0"></c:set>
							<c:forEach var="item" items="${sessionScope.cart}">
								<c:set var="total" value="${total + item.sphatlo.price * item.quantity}"></c:set>
									<c:url var="remove" value="cart">
										<c:param name="command" value="REMOVE"></c:param>
										<c:param name="sphatloId" value="${item.sphatlo.sphatloId}"></c:param>
									</c:url>
									<c:url var="sphatloUrl" value="SphatloControllerServlet">
										<c:param name="command" value="SPHATLO"></c:param>
									</c:url>
									<c:url var="order" value="OrderServlet">
										<c:param name="command" value="ORDER"></c:param>
										<c:param name="sphatloId" value="${item.sphatlo.sphatloId}"></c:param>
										<c:param name="quantity" value="${item.quantity}"></c:param>
									</c:url>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>${item.sphatlo.name}</h3>
											<p>${item.sphatlo.description}</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R${item.sphatlo.price}
									</div>  
									<div class="fh5co-food-btnAdd">
										<p><a href="${remove}" class="btn btn-primary btn-outline">Remove</a></p>
									</div>
								</li>
								</c:forEach>
								<li>
										<div>
											<h3>Total Amount</h3>
										</div>
									<div class="fh5co-food-pricing">
										R${total}
									</div>
								</li>
							</ul>
							
						</div>
						<div class="fh5co-food-btnAdd">
							<div class="col-md-4 col-md-offset-4 text-center to-animate-2">
								<p><a href="${order}" class="btn btn-primary btn-outline">Order</a></p>
							</div>
						</div>
						<div class="row btnSphatloList">
							<div class="col-md-4 col-md-offset-4 text-center to-animate-2">
								<p><a href="${sphatloUrl}">Continue Buying</a></p>
							</div>
						</div>
					</div>
				</div>
				<!--  
				<div class="row btnSphatloList">
					<div class="col-md-4 col-md-offset-4 text-center to-animate-2">
						<p><a href="${sphatlo}">Continue Buying</a></p>
					</div>
				</div>
				-->
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