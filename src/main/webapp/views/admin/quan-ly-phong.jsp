<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html>
<head>
<title>QLy Phong - SB Admin</title>
<jsp:include page="/WEB-INF/common/admin/css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/common/admin/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/common/admin/menu.jsp"></jsp:include>
		<div id="layoutSidenav_content">
			<div class="card mb-4">
				<div class="card-header" style="position: relative;">
					<i class="fas fa-table mr-1"></i> Phòng
					<a href= "/admin/home/manage-room/AddRoom" style="position:absolute; right: 0;">Add New Room</a>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>ID</th>
									<th>Category</th>
									<th>Capacity</th>
									<th>Kind of Bed</th>
									<th>Number of Bed</th>
									<th>Price Per Night</th>
									<th>Quantity</th>
									<th>Edit</th>
									 <th>Delete</th>
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