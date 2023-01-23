<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="UTF-8">
<title>Availability Rooms</title>
<jsp:include page="/common/web/css.jsp"></jsp:include>
</head>
<body>
	<!-- HEADER -->
	<jsp:include page="/common/web/header.jsp"></jsp:include>
	<!-- BANNER -->
	<section class="site-hero site-hero-innerpage overlay"
		data-stellar-background-ratio="0.5"
		style="background-image: url(/web/images/big_image_1.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">
				<div class="col-md-12 text-center">

					<div class="mb-5 element-animate">
						<h1>Availability Rooms</h1>
						<p></p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- END section -->
	<section class="room-section site-section">
		<div class="container">
			<c:forEach var="room" items="${rooms}">
				<div class="rooms-page-item">
					<div class="row">
						<div class="col-lg-6">
							<div class="room-pic-slider owl-carousel">
								<div class="single-room-pic">
									<img
										src="/web/images/${room.lowercaseCategoryName(room.getCategory().getName())}/img1.jpg"
										alt="">

								</div>
								<div class="single-room-pic">
									<img
										src="/web/images/${room.lowercaseCategoryName(room.getCategory().getName())}/img2.jpg"
										alt="">
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="room-text">
								<div class="room-title">
									<h2>${room.getCategory().getName()}<span></span> Room
									</h2>
									<div class="room-price">
										<h2>${room.getPricePerNight()}</h2>
										<sub>/night</sub>
									</div>

								</div>
								<div class="room-specs">
									<ul>
										<li><span class="ion-ios-people"></span>${room.getCapacity()}
											Guests</li>
										<li><span class="ion-ios-crop"></span>
											${room.getCategory().getSize()} m <sup>2</sup></li>
										<li><span class="ion-ios-bed"></span> ${room.getNumberOfBed()}<span></span>${room.getKindOfBed()}</li>
									</ul>
								</div>
								<div class="room-features">
									<div class="room-info">
										<i class="flaticon-019-television"></i> <span>Smart TV</span>
									</div>
									<div class="room-info">
										<i class="flaticon-029-wifi"></i> <span>High Wi-fi</span>
									</div>
									<div class="room-info">
										<i class="flaticon-003-air-conditioner"></i> <span>AC</span>
									</div>
									<div class="room-info">
										<i class="flaticon-036-parking"></i> <span>Parking</span>
									</div>
									<div class="room-info last">
										<i class="flaticon-007-swimming-pool"></i> <span>Pool</span>
									</div>
								</div>

								<form action="/your-information" method="get">
									<input type="hidden" name="checkin-date"
										value="<%=request.getParameter("checkin-date")%>"> <input
										type="hidden" name="checkout-date"
										value="<%=request.getParameter("checkout-date")%>"> <input
										type="hidden" name="guests"
										value="<%=request.getParameter("guests")%>"> <input
										type="hidden" name="roomId" value="${room.getRoomID()}">

									<div class="number-of-rooms-form">
										<div class="value-button decrease" id="decrease"
											onclick="decreaseValue(${room.getRoomID()},${room.getQuantity()})"
											value="Decrease Value">-</div>
										<input type="number" name="rooms" class="rooms"
											id="rooms${room.getRoomID()}" value="0" step="any" min="1"
											max="${room.getQuantity()}" />
										<div class="value-button increase" id="increase"
											onclick="increaseValue(${room.getRoomID()},${room.getQuantity()})"
											value="Increase Value">+</div>



										<input type="submit" class="btn btn-primary"
											value="Book this room">
									</div>

								</form>

								<div class="quantity-of-rooms">
									<p class="quantity" id="quantity-room${room.getRoomID()}">
										There are ${room.getQuantity()}<span></span> rooms left
									</p>
								</div>

							</div>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</section>

	<jsp:include page="/common/web/footer.jsp"></jsp:include>
	<jsp:include page="/common/web/js.jsp"></jsp:include>


</body>
</html>