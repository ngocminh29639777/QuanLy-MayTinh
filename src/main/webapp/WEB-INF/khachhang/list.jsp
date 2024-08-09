<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách khách hàng</title>
<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/layout/page-loader.jsp" />
	<jsp:include page="/WEB-INF/layout/navbar.jsp" />
	<jsp:include page="/WEB-INF/layout/sidebar.jsp" />

	<section class="content">
		<div class="container-fluid">
			<!-- Striped Rows -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="header">
							<h2>DANH SÁCH KHÁCH HÀNG</h2>
						</div>

						<form action="${contextPath}/khachhang/list" method="GET"
							class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search" name="search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Search</button>
						</form>



						<div class="body table-responsive">
							<table class="table table-striped" id="dataTable-listCustomer">
								<thead>
									<tr>
										<th>Mã KH</th>
										<th>Tên KH</th>
										<th>Địa chỉ</th>
										<th>Số điện thoại</th>
										<th>Email</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${not empty listKhachHang}">
											<c:forEach items="${listKhachHang}" var="khachHang">
												<tr>
													<td>${khachHang.maKH}</td>
													<td>${khachHang.tenKH}</td>
													<td>${khachHang.diaChi}</td>
													<td>${khachHang.soDienThoai}</td>
													<td>${khachHang.diaChiEmail}</td>
													<td><a
														href="${contextPath}/khachhang/update?id=${khachHang.maKH}">
															<i class="fa fa-pencil-square-o fa-2x text-primary"
															aria-hidden="true"></i>
													</a> <a href="javascript:void(0);"
														onclick="confirmDelete('${khachHang.maKH}')"> <i
															class="fa fa-trash fa-2x text-danger"></i>
													</a> <%-- <a href="${contextPath}/khachhang/delete?id=${khachHang.maKH}" >Delete</a> --%>
														<%-- <a href="${contextPath}/khachhang/detail?id=${khachHang.maKH}">Detail</a> --%>
													</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<td colspan="6" style="text-align: center">No record</td>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>


						<c:if test="${totalPages > 0}">
							<nav aria-label="Page navigation">
								<ul class="pagination mx-3">
									<c:if test="${currentPage > 0}">
										<li class="page-item"><a class="page-link"
											href="?page=${currentPage - 1}" aria-label="Previous"> <span
												aria-hidden="true">&laquo;</span> <span class="sr-only">Previous</span>
										</a></li>
									</c:if>
									<c:forEach begin="0" end="${totalPages - 1}" var="i">
										<c:choose>
											<c:when test="${currentPage == i}">
												<li class="page-item active"><span class="page-link">${i + 1}<span
														class="sr-only">(current)</span></span></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="?page=${i}">${i + 1}</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${currentPage < totalPages - 1}">
										<li class="page-item"><a class="page-link"
											href="?page=${currentPage + 1}" aria-label="Next"> <span
												aria-hidden="true">&raquo;</span> <span class="sr-only">Next</span>
										</a></li>
									</c:if>
								</ul>
							</nav>
						</c:if>


					</div>
				</div>
			</div>
			<!-- #END# Striped Rows -->
		</div>
	</section>

	<script>
function confirmDelete(maKH) {
    var result = confirm("Bạn có muốn xóa khách hàng này không!?");
    if (result) {
        window.location.href = "${contextPath}/khachhang/delete?id=" + maKH;
    }
}
</script>

	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>