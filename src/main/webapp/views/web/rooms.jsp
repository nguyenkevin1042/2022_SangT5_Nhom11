<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>

<head>

<meta charset="UTF-8">

<title>Room Page</title>
<jsp:include page="/common/web/css.jsp"></jsp:include>
</head>

<body>
	<jsp:include page="/common/web/header.jsp"></jsp:include>

	<section class="site-hero site-hero-innerpage overlay"
		data-stellar-background-ratio="0.5"
		style="background-image: url(web/images/big_image_1.jpg);">
		<div class="container">
			<div
				class="row align-items-center site-hero-inner justify-content-center">
				<div class="col-md-12 text-center">

					<div class="mb-5 element-animate">
						<h1>Our Rooms</h1>
						<p>Discover our world's #1 Luxury Room For VIP.</p>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- END section -->


	<section class="site-section">
		<div class="container">
			
		</div>
	</section>

	<section class="section-cover" data-stellar-background-ratio="0.5"
		style="background-image: url(images/img_5.jpg);">
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
