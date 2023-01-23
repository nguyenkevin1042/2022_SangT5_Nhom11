<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="UTF-8">
<title>Booking Now</title>
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
						<h1>Reservation</h1>
						<p>Discover our world's #1 Luxury Room For VIP.</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	
	<!-- FILL CUSTOMER INFORMATION -->
	<section class="site-section">
		<form:form action="confirm-bill" method="post"
			modelAttribute="customer">
			<div class="container">
				<div class="row">
					<!-- Bill -->
					<div class="col-md-4">
						<h2 class="mb-5">Your Bill</h2>
						<div class="media d-block room mb-0">

							<div class="media-body">
								<div class="row">
									<div class="col-sm-6">
										<h6>Checkin-date</h6>
										<p><%=request.getParameter("checkin-date")%></p>

									</div>
									<div class="col-sm-6">
										<h6>Checkout Date</h6>
										<p><%=request.getParameter("checkout-date")%></p>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<h6>Number of nights</h6>
										<p>${nights}</p>

									</div>
									<div class="col-sm-6">
										<h6>Number of guests</h6>
										<p><%=request.getParameter("guests")%></p>
									</div>
								</div>

								<div class="row">
									<div class="col-sm-6">
										<h6>Kind of Room</h6>
										<p>${room.getCategory().getName()}</p>

									</div>
									<div class="col-sm-6">
										<h6>Number of rooms</h6>
										<p><%=request.getParameter("rooms")%></p>
									</div>
								</div>

								<h6>Price per nights:</h6>
								<p>${room.getPricePerNight()}</p>

								<h6>Total:</h6>
								<p>${totalPrice}</p>

								<input type="hidden" name="checkin-date"
									value="<%=request.getParameter("checkin-date")%>"> <input
									type="hidden" name="checkout-date"
									value="<%=request.getParameter("checkout-date")%>"> <input
									type="hidden" name="guests"
									value="<%=request.getParameter("guests")%>"> <input
									type="hidden" name="roomId"
									value="<%=request.getParameter("roomId")%>"> <input
									type="hidden" name="rooms"
									value="<%=request.getParameter("rooms")%>"> <input
									type="hidden" name="nights" value="${nights}"> <input
									type="hidden" name="totalPrice" value="${totalPrice}">

							</div>
						</div>
					</div>

					<!-- Fill information -->
					<div class="col-md-6">
						<h2 class="mb-5">Your Information</h2>
						<!-- Nhập Họ Tên -->
						<div class="row">
							<div class="col-md-12 form-group">
								<label>Full Name</label>
								<form:input path="name" class="form-control" id="user"
									name="name" required="required" />
								<p id="name-error"></p>
							</div>
						</div>


						<!-- Nhập Email -->
						<div class="row">
							<div class="col-md-12 form-group">
								<label>Email</label>
								<form:input path="email" class="form-control" id="email"
									name="email" required="required" onchange="checkEmail(this)" />
								<p id="email-error">Ex: email@example.com</p>
							</div>
						</div>

						<!-- Nhập SDT -->
						<div class="row">
							<div class="col-md-12 form-group">
								<label id="phone">Phone Number</label>
								<form:input path="phone" class="form-control" id="phone"
									name="phone" required="required" onchange="checkPhone(this)" />
								<p id="phone-error">Phone only contains digits from 0-9</p>
							</div>

						</div>

						<!-- Nhập ghi chú -->
						<div class="row">
							<div class="col-md-12 form-group">
								<label id="note">Write a Note</label>
								<textarea class="form-control" id="note" name="note" cols="30"
									rows="8"></textarea>
							</div>
						</div>

						<!-- Button -->
						<div class="row">
							<div class="col-md-6 form-group">
								<input type="submit" value="Next" class="btn btn-primary" >
							</div>
						</div>

					</div>
				</div>
			</div>
		</form:form>
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