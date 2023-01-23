<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>

<head>
<meta charset="UTF-8">
<title>LuxuryHotel</title>
<jsp:include page="/common/web/css.jsp"></jsp:include>
</head>

<body>
	<!-- HEADER -->
	<jsp:include page="/common/web/header.jsp"></jsp:include>
	<!-- BANNER -->
	<section class="site-hero overlay" data-stellar-background-ratio="0.5"
		style="background-image: url(web/images/big_image_1.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">

				<div class="col-md-12 text-center">
					<div class="mb-5 element-animate">
						<h1>Welcome To Our Luxury Rooms</h1>
						<p>Discover our world's #1 Luxury Room For VIP.</p>
					</div>
					<!-- SELECTING FORM -->
					<div class="ftco-booking element-animate">
						<div class="container">
							<div class="row">
								<div class="col-lg-12">
									<form action="/availability-rooms" class="booking-form" method ="GET">
										<div class="row">
											<!-- Checkin date -->
											<div class="col-md-3">
												<div
													class="form-group p-2 align-self-stretch align-items-end">
													<div class="wrap">
														 <input type="text"
															name="checkin-date"
															id="checkin-date-input"
															class="form-control checkin_date checkin-date-input"
															placeholder="Check-in date"
															autocomplete="off"
															required="true">
													</div>
												</div>
											</div>
											<!-- Checkout date -->
											<div class="col-md-3">
												<div
													class="form-group p-2 align-self-stretch align-items-end">
													<div class="wrap">
														 <input type="text"
															name="checkout-date"
															id="checkout-date-input"
															class="form-control checkout_date checkout-date-input"
															placeholder="Check-out date"
															autocomplete="off"
															required="true">
													</div>
												</div>
											</div>
											<!-- Number of guests -->
											<div class="col-md-2">
												<div
													class="form-group p-2 align-self-stretch align-items-end">
													<div class="wrap">
														<div class="form-field">
															<div class="select-wrap">
																<div class="icon">
																	<span class="ion-ios-arrow-down"></span>
																</div>
																<select name="guests"  id="guests-input"class="form-control" autofocus="autofocus" required="true">
																	<option value="">Adult</option>
																	<option value="1">1</option>
																	<option value="2">2</option>
																	<option value="3">3</option>
																	<option value="4">4</option>
																	<option value="5">5+</option>
																</select>
															</div>
														</div>
													</div>
												</div>
											</div>
											<!-- Button -->
											<div class="col-md">
												<div class="form-group align-self-stretch align-items-end">
													<input type="submit" value="Check Availability"
														class="btn btn-primary py-3 px-4 align-self-stretch">
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>



			</div>
		</div>

	</section>
	<!-- END section -->


	<section class="site-section">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-4">
					<div class="heading-wrap text-center element-animate">
						<h4 class="sub-heading">Stay with our luxury rooms</h4>
						<h2 class="heading">Stay and Enjoy</h2>
						<p class="mb-5">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit. Minus illo similique natus, a recusandae?
							Dolorum, unde a quibusdam est? Corporis deleniti obcaecati
							quibusdam inventore fuga eveniet! Qui delectus tempore amet!</p>
						<p>
							<a href="/about" class="btn btn-primary btn-sm">More About Us</a>
						</p>
					</div>
				</div>
				<div class="col-md-1"></div>
				<div class="col-md-7">
					<img src="web/images/f_img_1.png" alt="Image placeholder"
						class="img-md-fluid">
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<section class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-12 heading-wrap text-center">
					<h4 class="sub-heading">Our Luxury Rooms</h4>
					<h2 class="heading">Featured Rooms</h2>
				</div>
			</div>
			<div class="row ">
				<div class="col-md-7">
					<div class="media d-block room mb-0">
						<figure>
							<img src="web/images/img_1.jpg" alt="Generic placeholder image"
								class="img-fluid">
							<div class="overlap-text">
								<span> Featured Room <span class="ion-ios-star"></span> <span
									class="ion-ios-star"></span> <span class="ion-ios-star"></span>
								</span>
							</div>
						</figure>
						<div class="media-body">
							<h3 class="mt-0">
								<a href="#">Presidential Room</a>
							</h3>
							<ul class="room-specs">
								<li><span class="ion-ios-people-outline"></span> 2 Guests</li>
								<li><span class="ion-ios-crop"></span> 22 ft <sup>2</sup></li>
							</ul>
							<p>Nulla vel metus scelerisque ante sollicitudin. Fusce
								condimentum nunc ac nisi vulputate fringilla.</p>
							<p>
								<a href="/bookNow" class="btn btn-primary btn-sm">Book Now
									From $20</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-5 room-thumbnail-absolute">
					<a href="#" class="media d-block room bg first-room"
						style="background-image: url(web/images/img_2.jpg);"> <!-- <figure> -->
						<div class="overlap-text">
							<span> Hotel Room <span class="ion-ios-star"></span> <span
								class="ion-ios-star"></span> <span class="ion-ios-star"></span>
							</span> <span class="pricing-from"> from $22 </span>
						</div> <!-- </figure> -->
					</a> <a href="#" class="media d-block room bg second-room"
						style="background-image: url(web/images/img_4.jpg);"> <!-- <figure> -->
						<div class="overlap-text">
							<span> Hotel Room <span class="ion-ios-star"></span> <span
								class="ion-ios-star"></span> <span class="ion-ios-star"></span>
							</span> <span class="pricing-from"> from $22 </span>
						</div> <!-- </figure> -->
					</a>

				</div>
			</div>
		</div>
	</section>

	<section class="section-cover" data-stellar-background-ratio="0.5"
		style="background-image: url(web/images/img_5.jpg);">
		<div class="container">
			<div class="row justify-content-center align-items-center intro">
				<div class="col-md-9 text-center element-animate">
					<h2>Relax and Enjoy your Holiday</h2>
					<p class="lead mb-5">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit. Architecto quidem tempore expedita facere
						facilis, dolores!</p>
					<div class="btn-play-wrap">
						<a href="https://vimeo.com/channels/staffpicks/93951774"
							class="btn-play popup-vimeo "><span class="ion-ios-play"></span></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<section class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md-12 heading-wrap text-center">
					<h4 class="sub-heading">Our Blog</h4>
					<h2 class="heading">Our Recent Blog</h2>
				</div>
			</div>
			<div class="row ">
				<div class="col-md-4">
					<div class="post-entry">
						<img src="web/images/img_3.jpg" alt="Image placeholder"
							class="img-fluid">
						<div class="body-text">
							<div class="category">Rooms</div>
							<h3 class="mb-3">
								<a href="#">New Rooms</a>
							</h3>
							<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Ipsum deserunt illo quis similique dolore
								voluptatem culpa voluptas rerum, dolor totam.</p>
							<p>
								<a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read
									More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="post-entry">
						<img src="web/images/img_6.jpg" alt="Image placeholder"
							class="img-fluid">
						<div class="body-text">
							<div class="category">News</div>
							<h3 class="mb-3">
								<a href="#">New Staff Added</a>
							</h3>
							<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Ipsum deserunt illo quis similique dolore
								voluptatem culpa voluptas rerum, dolor totam.</p>
							<p>
								<a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read
									More</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="post-entry">
						<img src="web/images/img_5.jpg" alt="Image placeholder"
							class="img-fluid">
						<div class="body-text">
							<div class="category">New Rooms</div>
							<h3 class="mb-3">
								<a href="#">Big Rooms for All</a>
							</h3>
							<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit. Ipsum deserunt illo quis similique dolore
								voluptatem culpa voluptas rerum, dolor totam.</p>
							<p>
								<a href="#" class="btn btn-primary btn-outline-primary btn-sm">Read
									More</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- END section -->

	<jsp:include page="/common/web/footer.jsp"></jsp:include>
	<jsp:include page="/common/web/js.jsp"></jsp:include>

</body>
</html>