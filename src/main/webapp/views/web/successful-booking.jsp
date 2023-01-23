<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Successful</title>
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
						<h1>Booking successful</h1>
							<a class="btn btn-primary py-3 px-4 align-self-stretch" href="/"><span>Return Homepage</span></a>
							<a class="btn btn-primary py-3 px-4 align-self-stretch" href="#"><span>Check your bill</span></a>
					</div>

				</div>
			</div>
		</div>
	</section>

	<jsp:include page="/common/web/footer.jsp"></jsp:include>
	<jsp:include page="/common/web/js.jsp"></jsp:include>
</body>
</html>