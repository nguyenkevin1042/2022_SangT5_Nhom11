<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/taglib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - SB Admin</title>
<jsp:include page="/WEB-INF/common/admin/css.jsp"></jsp:include>
</head>
<body>

	<div id="layoutAuthentication">

		<div id="layoutAuthentication_content">
			<main>
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-5">
							<div class="card shadow-lg border-0 rounded-lg mt-5">
								<div class="card-header">
									<h3 class="text-center font-weight-light my-4">Login</h3>
								</div>
								<div class="card-body">
									<form>
										<div class="form-group">
											<label class="small mb-1" for="inputEmailAddress">Username</label>
											<input class="form-control py-4" type="text" id="name"
												placeholder="Enter username" name="name" required
												minlength="3" />
										</div>
										<div class="form-group">
											<label class="small mb-1" for="inputPassword">Password</label>
											<input class="form-control py-4" id="pPassword"
												type="password" placeholder="Enter password" required
												pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,}$"
												title="Please include at least 1 uppercase, 1 lowercase, 1 number and 1 special characters such as !@#$%*" />
										</div>

										<div
											class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
											<button class="btn btn-primary" type="submit">Login</button>
										</div>

									</form>
								</div>
								<div class="card-footer text-center">
									<div class="small">
										<a href="register.html">Need an account? Sign up!</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>
		</div>

	</div>
	<script src="/web/js/script-login.js"></script>
</body>
</html>