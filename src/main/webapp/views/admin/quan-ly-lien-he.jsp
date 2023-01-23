<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/common/taglib.jsp"></jsp:include>
<!DOCTYPE html>
<html>
<head>
<title>QLy Lien he - SB Admin</title>
<jsp:include page="/WEB-INF/common/admin/css.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="/WEB-INF/common/admin/header.jsp"></jsp:include>

	<div id="layoutSidenav">
		<jsp:include page="/WEB-INF/common/admin/menu.jsp"></jsp:include>
		<div id="layoutSidenav_content">
			<div class="card mb-4">
				<div class="card-header">
					<i class="fas fa-table mr-1"></i> Liên hệ
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="100%"
							cellspacing="0">
							<thead>
								<tr>
									<th>ID</th>
									<th>Tên</th>
									<th>SDT</th>
									<th>Email</th>
									<th>Lời nhắn</th>
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