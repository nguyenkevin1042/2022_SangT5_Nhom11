<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/taglib.jsp"></jsp:include>

<div id="layoutSidenav">
	<div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark"
			id="sidenavAccordion">
			<div class="sb-sidenav-menu">
				<div class="nav">
					<div class="sb-sidenav-menu-heading">Quản Lí</div>

					<!-- Room-->
					<a class="nav-link collapsed" href="#" data-toggle="collapse"
						data-target="#collapseRoomLayouts" aria-expanded="false"
						aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tachometer-alt"></i>
						</div> Quản Lí Phòng
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseRoomLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="/admin/home/manage-room">Phòng</a> <a
								class="nav-link" href="/admin/home/manage-room-category">
								Loại Phòng</a>
						</nav>
					</div>

					<!-- Booking -->
					<a class="nav-link" href="/admin/home/manage-booking">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Quản Lí Đặt Phòng
					</a>

					<!-- User -->
					<a class="nav-link collapsed" href="#"
						data-toggle="collapse" data-target="#collapsePersonLayouts"
						aria-expanded="false" aria-controls="collapseLayouts">
						<div class="sb-nav-link-icon">
							<i class="fas fa-users"></i>
						</div> Quản Lí Thông Tin User
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapsePersonLayouts"
						aria-labelledby="headingOne" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav">
							<a class="nav-link" href="/admin/home/manage-customer">Khách
								Hàng</a> <a class="nav-link" href="/admin/home/manage-staff">Nhân
								Viên</a>
						</nav>
					</div>

					<!-- Bill -->
					<a class="nav-link" href="/admin/home/manage-bill">
						<div class="sb-nav-link-icon">
							<i class="fas fa-file-invoice-dollar"></i>
						</div> Quản Lí Hóa Đơn

					</a>

					<!-- Message from contact -->
					<a class="nav-link" href="/admin/home/manage-contact">
						<div class="sb-nav-link-icon">
							<i class="fas fa-sms"></i>
						</div> Quản lý Liên Hệ

					</a>

					<!-- Charts -->
					<a class="nav-link" href="tables.html">
						<div class="sb-nav-link-icon">
							<i class="fas fa-chart-area"></i>
						</div> Biểu Đồ
					</a>

					<!-- Log -->
					<a class="nav-link collapsed" href="#"
						data-toggle="collapse" data-target="#collapseLogPages"
						aria-expanded="false" aria-controls="collapsePages">
						<div class="sb-nav-link-icon">
							<i class="fas fa-tasks"></i>
						</div> Quản Lí Log
						<div class="sb-sidenav-collapse-arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</a>
					<div class="collapse" id="collapseLogPages"
						aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
						<nav class="sb-sidenav-menu-nested nav accordion"
							id="sidenavAccordionPages">
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseAuth" aria-expanded="false"
								aria-controls="pagesCollapseAuth"> Authentication
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseAuth"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="login.html">Login</a> <a
										class="nav-link" href="register.html">Register</a> <a
										class="nav-link" href="password.html">Forgot Password</a>
								</nav>
							</div>
							<a class="nav-link collapsed" href="#" data-toggle="collapse"
								data-target="#pagesCollapseError" aria-expanded="false"
								aria-controls="pagesCollapseError"> Error
								<div class="sb-sidenav-collapse-arrow">
									<i class="fas fa-angle-down"></i>
								</div>
							</a>
							<div class="collapse" id="pagesCollapseError"
								aria-labelledby="headingOne"
								data-parent="#sidenavAccordionPages">
								<nav class="sb-sidenav-menu-nested nav">
									<a class="nav-link" href="/admin/home/401">401 Page</a> <a
										class="nav-link" href="/admin/home/404">404 Page</a> <a
										class="nav-link" href="/admin/home/500">500 Page</a>
								</nav>
							</div>
						</nav>
					</div>


				</div>
			</div>
			<div class="sb-sidenav-footer">
				<div class="small">Xin Chào:</div>
				Nguyễn Văn A
			</div>
		</nav>
	</div>
</div>
