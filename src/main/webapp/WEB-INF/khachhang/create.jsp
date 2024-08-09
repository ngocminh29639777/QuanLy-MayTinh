<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Tạo thông tin khách hàng</title>
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
                            <h2>TẠO THÔNG TIN KHÁCH HÀNG</h2>
                        </div>
                        <div class="body">
                            <form:form id="form-create-khachhang" action="${contextPath}/khachhang/create" method="post" modelAttribute="khachHang">
                                <form:label path="maKH">Mã KH: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="maKH" class="form-control" placeholder="Mã KH" tabindex="1"/>
                                        <span class="error-msg" id="maKH-error"><form:errors path="maKH"/></span>
                                    </div>
                                </div>
                                <form:label path="tenKH">Tên KH: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="tenKH" class="form-control" placeholder="Tên KH" tabindex="2"/>
                                        <span class="error-msg" id="tenKH-error"><form:errors path="tenKH"/></span>
                                    </div>
                                </div>
                                <form:label path="diaChi">Địa chỉ: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="diaChi" class="form-control" placeholder="Địa chỉ" tabindex="3"/>
                                        <span class="error-msg" id="diaChi-error"><form:errors path="diaChi"/></span>
                                    </div>
                                </div>
                                <form:label path="soDienThoai">Số điện thoại: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="soDienThoai" class="form-control" placeholder="Số điện thoại" tabindex="4"/>
                                        <span class="error-msg" id="soDienThoai-error"><form:errors path="soDienThoai"/></span>
                                    </div>
                                </div>
                                <form:label path="diaChiEmail">Địa chỉ email: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="diaChiEmail" class="form-control" placeholder="Địa chỉ email" tabindex="5"/>
                                        <span class="error-msg" id="diaChiEmail-error"><form:errors path="diaChiEmail"/></span>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary" tabindex="6"><i class="fa fa-check"></i> Thêm</button>
                                <a href="${contextPath}/khachhang/list" class="btn btn-danger" tabindex="7"><i class="fa fa-remove"></i> Hủy</a>
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