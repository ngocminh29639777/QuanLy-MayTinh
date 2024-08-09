<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Đăng ký sử dụng máy</title>
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
                        <h2>
                            ĐĂNG KÝ SỬ DỤNG MÁY
                        </h2>
                    </div>
                    <div class="body">
                        <form:form id="form-create-sudungmay" action="${contextPath}/suDungMay/create" method="post" modelAttribute="suDungMay">
                            <form:label path="id.maKH">Mã KH: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="id.maKH" class="form-control" placeholder="MaKH" tabindex="1" />
                                    <span class="error-msg-2" id="maKH-error"><form:errors path="id.maKH"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.maMay">Mã Máy: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="id.maMay" class="form-control" placeholder="MaMay" tabindex="2" />
                                    <span class="error-msg-2" id="maMay-error"><form:errors path="id.maMay"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.ngayBatDauSuDung">NgayBatDauSuDung: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="date" class="form-control" placeholder="NgayBatDauSuDung" tabindex="3" name="id.ngayBatDauSuDung" id="ngayBatDauSuDung">
                                    <span class="error-msg-2" id="ngayBatDauSuDung-error"><form:errors path="id.ngayBatDauSuDung"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.gioBatDauSuDung">GioBatDauSuDung: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="time" class="form-control" placeholder="GioBatDauSuDung" tabindex="4" name="id.gioBatDauSuDung" id="gioBatDauSuDung">
                                    <span class="error-msg-2" id="gioBatDauSuDung-error"><form:errors path="id.gioBatDauSuDung"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="thoiGianSuDung">ThoiGianSuDung: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="thoiGianSuDung" class="form-control" placeholder="ThoiGianSuDung" tabindex="5" />
                                    <span class="error-msg-2" id="thoiGianSuDung-error"><form:errors path="thoiGianSuDung"></form:errors></span>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-custom" tabindex="6"><i class="fa fa-check" aria-hidden="true"></i> Add</button>
                            <a href="${contextPath}/suDungMay/list" class="btn btn-primary btn-custom" tabindex="7"><i class="fa fa-remove" aria-hidden="true"></i> Back</a>
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