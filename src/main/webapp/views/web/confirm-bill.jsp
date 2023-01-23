<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Check Bill Again</title>
<jsp:include page="/common/web/css.jsp"></jsp:include>

</head>

<body>
	<!-- HEADER -->
	<jsp:include page="/common/web/header.jsp"></jsp:include>
	<!-- BANNER -->
	<section class="site-hero site-hero-innerpage overlay"
		data-stellar-background-ratio="0.5"
		style="background-image: url(web/images/big_image_1.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">
				<div class="col-md-12 text-center">

					<div class="mb-5 element-animate">
						<h1>Check Your Bill Again</h1>
						<p>Please make sure that all your informations are correct.</p>
					</div>

				</div>
			</div>
		</div>
	</section>


	<!-- CHECK BILL SECTION -->
	<section class="site-section">
		<div class="container">
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-6">
					<h2 class="mb-5">Your Bill</h2>
					<!-- Start the form -->
					<form action="complete-booking" method="post" modelAttribute="bill">
						<!-- Customer information -->
						<!-- Fullname -->
						<div class="row">
							<div class="col-sm-5 form-group">
								<h4>Name:</h4>
							</div>
							<div class="col-sm-7 form-group">
								<p>${customer.getName()}</p>
							</div>
						</div>
						<!-- Email -->
						<div class="row">
							<div class="col-sm-5 form-group">
								<h4>Email:</h4>
							</div>
							<div class="col-sm-7 form-group">
								<p>${customer.getEmail()}</p>
							</div>
						</div>
						<!-- Phone -->
						<div class="row">
							<div class="col-sm-5 form-group">
								<h4>Phone Number:</h4>
							</div>
							<div class="col-sm-7 form-group">
								<p>${customer.getPhone()}</p>
							</div>
						</div>


						<!-- Room type and number of rooms -->
						<div class="row">
							<div class="col-sm-6 form-group">
								<h4>Kind of room</h4>
								<p>${room.getCategory().getName()}</p>
							</div>
							<div class="col-sm-6 form-group">
								<h4>Number of rooms</h4>
								<p><%=request.getParameter("rooms")%></p>

							</div>
						</div>
						<!-- number of nights and number of guests -->
						<div class="row">
							<div class="col-sm-6 form-group">
								<h4>Number of nights</h4>
								<p><%=request.getParameter("nights")%></p>
							</div>
							<div class="col-sm-6 form-group">
								<h4>Number of guests</h4>
								<p><%=request.getParameter("guests")%></p>

							</div>
						</div>
						<!-- Total price  -->
						<div class="row">
							<div class="col-sm-5 form-group">
								<h4>Total price:</h4>
							</div>
							<div class="col-sm-7 form-group">
								<p><%=request.getParameter("totalPrice")%></p>
							</div>
						</div>
						<!-- Customer's Note  -->
						<div class="row">
							<div class="col-sm-5 form-group">
								<h4>Your Note:</h4>
							</div>
							<div class="col-sm-7 form-group">
								<p><%=request.getParameter("note")%></p>
							</div>
						</div>

<input type="hidden" name="name" value="${customer.getName()}">
<input type="hidden" name="email" value="${customer.getEmail()}">
<input type="hidden" name="phone" value="${customer.getPhone()}">
						<input type="hidden" name="roomId" value="${room.getRoomID()}">
						<input type="hidden" name="checkin-date"
							value="<%=request.getParameter("checkin-date")%>"> <input
							type="hidden" name="checkout-date"
							value="<%=request.getParameter("checkout-date")%>"> <input
							type="hidden" name="guests"
							value="<%=request.getParameter("guests")%>"> <input
							type="hidden" name="rooms"
							value="<%=request.getParameter("rooms")%>"> <input
							type="hidden" name="nights"
							value="<%=request.getParameter("nights")%>"> <input
							type="hidden" name="totalPrice"
							value="<%=request.getParameter("totalPrice")%>"> <input
							type="hidden" name="note"
							value="<%=request.getParameter("note")%>">


						<!-- Button -->
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="submit" value="Reserve Now" class="btn btn-primary">
							</div>
						</div>
					</form>
					<!-- End the form -->
				</div>
				<div class="col-md-3"></div>
			</div>
		</div>
	</section>
	<!-- END section -->

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

	<jsp:include page="/common/web/footer.jsp"></jsp:include>
	<jsp:include page="/common/web/js.jsp"></jsp:include>

</body>

</html>