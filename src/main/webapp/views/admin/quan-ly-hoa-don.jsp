<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/common/taglib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>QLy Hoa Don - SB Admin</title>
<jsp:include page="/WEB-INF/common/admin/css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/common/admin/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/common/admin/menu.jsp"></jsp:include>
		<div id="layoutSidenav_content">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> Hóa đơn
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>Mã hóa đơn</th>
									<th>Loại Phòng</th>
									<th>MKH</th>
									<th>Tên Khách Hàng</th>
									<th>Ngày nhận phòng</th>
									<th>Ngày trả Phòng</th>
									<th>Số đêm </th>
									<th>Số người </th>
									<th>Số lượng phòng</th>
									<th>Tổng tiền</th>
									<th>Note</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tfoot>

							</tfoot>
							<tbody>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/common/admin/footer.jsp"></jsp:include>
	<jsp:include page="/WEB-INF/common/admin/js.jsp"></jsp:include>
</body>
</html>