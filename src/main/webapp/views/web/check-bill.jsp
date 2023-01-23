<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Check your bill</title>
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
						<h1>Check Your Bill</h1>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- Check bill section -->
	
	<!-- END section -->





	<jsp:include page="/common/web/footer.jsp"></jsp:include>
	<jsp:include page="/common/web/js.jsp"></jsp:include>

</body>
</html>