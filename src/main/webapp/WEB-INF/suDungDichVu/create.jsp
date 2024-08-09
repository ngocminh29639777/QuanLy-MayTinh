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
                            ĐĂN KÝ SỬ DỤNG DỊCH VỤ
                        </h2>
                    </div>
                    <div class="body">
                        <form:form id="form-register" action="${contextPath}/suDungDichVu/create" method="post" modelAttribute="suDungDichVu">
                            <form:label path="id.maKH">Mã KH: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="id.maKH" class="form-control" placeholder="Customer ID" tabindex="1" />
                                    <span class="error-msg-2" id="maKH-error"><form:errors path="id.maKH"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.maDV">Mã DV: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="id.maDV" class="form-control" placeholder="Service ID" tabindex="2" />
                                    <span class="error-msg-2" id="maDV-error"><form:errors path="id.maDV"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.ngaySuDung">Ngày SD: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="date" class="form-control" placeholder="Usage Date" tabindex="3" name="id.ngaySuDung" id="ngaySuDung">
                                    <span class="error-msg-2" id="ngaySuDung-error"><form:errors path="id.ngaySuDung"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="id.gioSuDung">Giờ SD: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <input type="time" class="form-control" placeholder="Usage Time" tabindex="4" name="id.gioSuDung" id="gioSuDung">
                                    <span class="error-msg-2" id="gioSuDung-error"><form:errors path="id.gioSuDung"></form:errors></span>
                                </div>
                            </div>
                            <form:label path="soLuong">Số Lượng: <span style="color: red;"> *</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="soLuong" class="form-control" placeholder="Quantity" tabindex="5" />
                                    <span class="error-msg-2" id="soLuong-error"><form:errors path="soLuong"></form:errors></span>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary btn-custom" tabindex="6"><i class="fa fa-check" aria-hidden="true"></i> Add</button>
                            <a href="${contextPath}/suDungDichVu/list" class="btn btn-primary btn-custom" tabindex="7"><i class="fa fa-remove" aria-hidden="true"></i> Back</a>
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