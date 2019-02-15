<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>

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
	
	
	<div id="fh5co-container">
		<div class="js-sticky">
			<div class="fh5co-main-nav">
				<div class="container-fluid">
					<div class="fh5co-menu-1">
						<a href="#" data-nav-section="home">Home</a>
						<a href="#" data-nav-section="about">About</a>
						<a href="#" data-nav-section="features">Features</a>
					</div>
					<div class="fh5co-logo">
						<a href="index.jsp">Shalom Food</a>
					</div>
					
					<div class="fh5co-menu-2">
						<a href="#" data-nav-section="menu">Menu</a>
						
						<form action="SphatloControllerServlet" method="get">
							<input type="hidden" name="command" value="LOGIN">
							<input type="submit" value="Sign In">
						</form>
						
						 
						<form action="UserControllerServlet" method="get">
							<input type="hidden" name="command" value="REGISTER">
							<input type="submit" value="Sign up">
						</form>
						
					</div>
					<!-- 
					<div class="fh5co-menu-2">
						<a href="#" data-nav-section="menu">Menu</a>
						<a href="/SphatloControllerServlet?command=LOGIN" >Sign In</a>
						<a href="UserControllerServlet?method=get&command=ADD">Sign Up</a>
					</div>
					 -->
				</div>
				
			</div>
		</div>
		<div id="fh5co-about" data-section="about">
			<div class="fh5co-2col fh5co-bg to-animate-2" style="background-image: url(images/sphatlo.jpg)"></div>
			<div class="fh5co-2col fh5co-text">
				<h2 class="heading to-animate">About Us</h2>
				<p class="to-animate"><span class="firstcharacter">F</span>ar far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life.</p>
				<p class="text-center to-animate"><a href="#" class="btn btn-primary btn-outline" data-nav-section="reservation">Get in touch</a></p>
			</div>
		</div>

		<div id="fh5co-featured" data-section="features">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Featured Dishes</h2>
						<p class="sub-heading to-animate">Food brings people together on many different levels. It’s nourishment of the soul and body; it is truly love. Giada De Laurentiis.</p>
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
						<p class="sub-heading to-animate">Food is for eating, and good food is to be enjoyed… I think food is, actually, very beautiful in itself. Delia Smith.</p>
					</div>
				</div>
				<div class="row row-padded">
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class="fh5co-drinks">Kota</h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/malwela.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Zama Zama</h3>
											<p>Chips, Archar, Polony</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R15.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/classic_bg.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Zama Impilo</h3>
											<p>Chips, Archar, Polony, Special</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R16.10
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/Kota (1).jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Malwela</h3>
											<p>Chips, Archar, Polony, Special, Cheese</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R18.00
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/kasi.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Monate Ntwaa</h3>
											<p>Chips, Archar, Polony, Special, Cheese, Viena</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R20.00
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6">
						<div class="fh5co-food-menu to-animate-2">
							<h2 class=""></h2>
							<ul>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/russianlarge.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Skhambane</h3>
											<p>Chips, Archar, Polony, Special, Cheese, Russian</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R23.50
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/burger.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>Woza Name</h3>
											<p>Chips, Archar, Polony, Special, Cheese, Russian, Lettice</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R25.00
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/vegbaconsmall.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>King Monate</h3>
											<p>Chips, Archar, Polony, Special, Cheese, Russian, Burger, Lettice</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R28.00
									</div>
								</li>
								<li>
									<div class="fh5co-food-desc">
										<figure>
											<img src="images/sphatlo.jpg" class="img-responsive" alt="Free HTML5 Templates by FREEHTML5.co">
										</figure>
										<div>
											<h3>King Bozza</h3>
											<p>Chips, Archar, Polony, Special, Cheese, Russian, Burger, Lettice, Boiled Eggs</p>
										</div>
									</div>
									<div class="fh5co-food-pricing">
										R32.00
									</div>
								</li>
							</ul>
						</div>
					</div>

		<div id="fh5co-contact" data-section="reservation">
			<div class="container">
				<div class="row text-center fh5co-heading row-padded">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="heading to-animate">Contact Us</h2>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 to-animate-2">
						<h3>Contact Info</h3>
						<ul class="fh5co-contact-info">
							<li class="fh5co-contact-address ">
								<i class="icon-home"></i>
								235 Main Street & Marshall Street,  <br> Johannesburg 2000
							</li>
							<li><i class="icon-phone"></i> 011 365 9685</li>
							<li><i class="icon-envelope"></i>info@shalomfood.com</li>
							<li><i class="icon-globe"></i> <a href="http://freehtml5.co/" target="_blank">www.shalomfood.com</a></li>
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