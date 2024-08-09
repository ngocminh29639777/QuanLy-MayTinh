<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cập nhật khách hàng</title>
	<link rel="stylesheet" href="/resources/css/index.css">
	<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/layout/page-loader.jsp" />
    <jsp:include page="/WEB-INF/layout/navbar.jsp" />
    <jsp:include page="/WEB-INF/layout/sidebar.jsp" />
    
     <section class="content">
        <div class="container-fluid">
            <!-- Vertical Layout -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>CẬP NHẬT KHÁCH HÀNG</h2>
                        </div>
                        <div class="body">
                            <form:form action="${contextPath}/khachhang/update" method="post" modelAttribute="khachHang">
                                <form:label path="maKH">Mã KH: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="maKH" class="form-control" placeholder="Mã KH" readonly="true" />
                                    </div>
                                </div>
                                <form:label path="tenKH">Tên KH: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="tenKH" class="form-control" placeholder="tenKH" />
                                    </div>
                                </div>
                                <form:label path="diaChi">Địa chỉ: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="diaChi" class="form-control" placeholder="diaChi" />
                                    </div>
                                </div>
                                <form:label path="soDienThoai">Số điện thoại: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="soDienThoai" class="form-control" placeholder="soDienThoai" />
                                    </div>
                                </div>
                                <form:label path="diaChiEmail">Email: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="diaChiEmail" class="form-control" placeholder="diaChiEmail" />
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Update</button>
                                <a href="${contextPath}/khachhang/list" class="btn btn-danger"><i class="fa fa-remove"></i> Cancel</a>
                            </form:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>