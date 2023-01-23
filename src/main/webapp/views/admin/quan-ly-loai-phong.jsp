<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>QLy Loai Phong - SB Admin</title>
<jsp:include page="/WEB-INF/common/admin/css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/common/admin/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/common/admin/menu.jsp"></jsp:include>

		<div id="layoutSidenav_content">
			<div class="card mb-4">
				<div class="card-header" style="position: relative;">
					<i class="fas fa-table mr-1"></i> Loại phòng
					<a href= "/admin/home/manage-room-category/AddCategory" style="position:absolute; right: 0;">Add New Category-Room</a>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Code</th>
									<th>Size(m<sup>2</sup>)</th>
									<th>Description</th>
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