<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách máy</title>
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
							<h2>DANH SÁCH MÁY</h2>
							
						</div>

						<form action="${contextPath}/may/list" method="GET"
							class="form-inline my-2 my-lg-0">
							<input class="form-control mr-sm-2" type="search"
								placeholder="Search" aria-label="Search" name="search">
							<button class="btn btn-outline-success my-2 my-sm-0"
								type="submit">Search</button>
						</form>

						<div class="body table-responsive">

							<table class="table table-striped" id="dataTable-listMays">
								<thead>
									<tr>
										<th>Ma May</th>
										<th>Vi Tri</th>
										<th>Trang Thai</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${not empty listMays}">
											<c:forEach items="${listMays}" var="may">
												<tr>
													<td>${may.maMay}</td>
													<td>${may.viTri}</td>
													<td>${may.trangThai}</td>
													<td>
														<!-- Add your actions here --> <a
														href="${contextPath}/may/update?id=${may.maMay}">
														<i class="fa fa-pencil-square-o fa-2x text-primary" aria-hidden="true"></i>
														</a>
														<%-- <a href="javascript:void(0);" onclick="confirmDelete('${may.maMay}')">Delete</a> --%>
														<a href="javascript:void(0);" onclick="confirmDelete('${may.maMay}')">
														<i class="fa fa-trash fa-2x text-danger"></i>
														</a>
														<!-- Add more actions if needed -->
													</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<td colspan="4" style="text-align: center">No record</td>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<%--                     <div class="pagination">
    <c:if test="${currentPage > 0}">
        <a href="?page=${currentPage - 1}">Previous</a>
    </c:if>
    <c:forEach begin="0" end="${totalPages - 1}" var="i">
        <c:choose>
            <c:when test="${currentPage == i}">
                <a href="?page=${i}"><b>${i}</b></a>
            </c:when>
            <c:otherwise>
                <a href="?page=${i}">${i}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    <c:if test="${currentPage < totalPages - 1}">
        <a href="?page=${currentPage + 1}">Next</a>
    </c:if>
</div> --%>
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
function confirmDelete(maMay) {
    var result = confirm("Are you sure you want to delete this machine?");
    if (result) {
        window.location.href = "${contextPath}/may/delete?id=" + maMay;
    }
}
</script>
	
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>