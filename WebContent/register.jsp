<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>

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
   		<div class="js-sticky">
			<div class="fh5co-main-nav">
				<div class="container-fluid">
					<div class="fh5co-menu-1">
						<a href="#" data-nav-section="features">Features</a>
						
						<form action="UserControllerServlet" method="get">
							<input type="hidden" name="command" value="HOME">
							<input type="submit" value="Home">
						</form>
					</div>
					<div class="fh5co-logo">
						<a href="index.jsp">Shalom Food</a>
					</div>
					
					<div class="fh5co-menu-2">
						<a href="#" data-nav-section="menu">Menu</a>
					</div>
				</div>
				
			</div>
		</div>
		
	<form action="UserControllerServlet" method="GET">
		<input type="hidden" name="command" value="ADD" />
		<input type="hidden" name="userId" value="0" />
		
		<div id="fh5co-contact" data-section="reservation">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Register</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 to-animate-2">
						<h3>Sign Up Form</h3>
						<div class="form-group ">
							<label for="name" class="sr-only">Name</label>
							<input name="name" class="form-control" placeholder="Name" type="text">
						</div>
						<div class="form-group ">
							<label for="surname" class="sr-only">Surname</label>
							<input name="surname" class="form-control" placeholder="Surname" type="text">
						</div>
						<div class="form-group">
							<label for="gender" class="sr-only">Gender</label>
							<select class="form-control" name="gender">
							  <option value="Male">Male</option>
							  <option value="Female">Female</option>
							</select>
						</div>
						<div class="form-group ">
							<label for="mobile" class="sr-only">Mobile</label>
							<input name="mobile" class="form-control" placeholder="Mobile" type="text">
						</div>
							
						<div class="form-group ">
							<label for="email" class="sr-only">Email</label>
							<input name="email" class="form-control" placeholder="Email" type="text">
						</div>
						
						<div class="form-group ">
							<label for="password" class="sr-only">Password</label>
							<input name="password" class="form-control" placeholder="Password" type="password">
						</div>
						
						<div class="form-group ">
							<input class="btn btn-primary" value="Sign Up" type="submit">
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--  
			<table>
				<tbody>
					<tr>
						<td><label>Name</label></td>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<td><label>Surname</label></td>
						<td><input type="text" name="surname" /></td>
					</tr>
					<tr>
						<td><label>Gender</label></td>
						<td><select name="gender">
								<option value="Male">Male</option>
								<option value="Female">Female</option>
							</select>					
						</td>
					</tr>
					<tr>
						<td><label>Mobile</label></td>
						<td><input type="text" name="mobile" /></td>
					</tr>
					<tr>
						<td><label>Email</label></td>
						<td><input type="text" name="email" /></td>
					</tr>
					<tr>
						<td><label>Password</label></td>
						<td><input type="password" name="password" /></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Sign Up" /></td>
					</tr>
				</tbody>
			</table>
		-->
		</form>
		
		<div id="fh5co-featured" data-section="features">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Featured Dishes</h2>
						<p class="sub-heading to-animate">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row">
					<div class="fh5co-grid">
						<div class="fh5co-v-half to-animate-2">
							<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/small_slider_bg.jpg)"></div>
							<div class="fh5co-v-col-2 fh5co-text fh5co-special-1 arrow-left">
								<h2>Fresh Mushrooms</h2>
								<span class="pricing">$7.50</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>
						<div class="fh5co-v-half">
							<div class="fh5co-h-row-2 to-animate-2">
								<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/feature_bg.jpg)"></div>
								<div class="fh5co-v-col-2 fh5co-text arrow-left">
									<h2>Grilled Chiken Salad</h2>
									<span class="pricing">$12.00</span>
									<p>Far far away, behind the word mountains.</p>
								</div>
							</div>
							<div class="fh5co-h-row-2 fh5co-reversed to-animate-2">
								<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/small_slider_bg.jpg)"></div>
								<div class="fh5co-v-col-2 fh5co-text arrow-right">
									<h2>Cheese and Garlic Toast</h2>
									<span class="pricing">$4.50</span>
									<p>Far far away, behind the word mountains.</p>
								</div>
							</div>
						</div>

						<div class="fh5co-v-half">
							<div class="fh5co-h-row-2 fh5co-reversed to-animate-2">
								<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/feature_bg.jpg)"></div>
								<div class="fh5co-v-col-2 fh5co-text arrow-right">
									<h2>Organic Egg</h2>
									<span class="pricing">$4.99</span>
									<p>Far far away, behind the word mountains.</p>
								</div>
							</div>
							<div class="fh5co-h-row-2 to-animate-2">
								<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/small_slider_bg.jpg)"></div>
								<div class="fh5co-v-col-2 fh5co-text arrow-left">
									<h2>Salad with Crispy Chicken</h2>
									<span class="pricing">$8.50</span>
									<p>Far far away, behind the word mountains.</p>
								</div>
							</div>
						</div>
						<div class="fh5co-v-half to-animate-2">
							<div class="fh5co-v-col-2 fh5co-bg-img" style="background-image: url(images/small_slider_bg.jpg)"></div>
							<div class="fh5co-v-col-2 fh5co-text fh5co-special-1 arrow-left">
								<h2>Tomato Soup with Chicken</h2>
								<span class="pricing">$12.99</span>
								<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							</div>
						</div>

					</div>
				</div>

			</div>
		</div>
		
		<div id="fh5co-menus" data-section="menu">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Food Menu</h2>
						<p class="sub-heading to-animate">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
					</div>
				</div>
				<div class="row row-padded">
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Drinks</h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Pineapple Juice</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$17.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/classic_bg.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Green Juice</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$7.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_7.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Soft Drinks</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Carlo Rosee Drinks</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-dishes">Steak</h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_3.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Beef Steak</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$17.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_4.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Tomato with Chicken</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$7.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_2.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Sausages from Italy</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_8.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Beef Grilled</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Drinks</h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Pineapple Juice</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$17.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_6.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Green Juice</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$7.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_7.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Soft Drinks</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_5.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Carlo Rosee Drinks</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-dishes">Steak</h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_3.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Beef Steak</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$17.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_4.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Tomato with Chicken</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$7.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_2.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Sausages from Italy</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/res_img_8.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Beef Grilled</h3>
											<p>Far far away, behind the word mountains.</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										$12.99
									</div>
								</li>
							</ul>
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