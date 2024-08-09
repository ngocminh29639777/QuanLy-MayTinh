<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Tạo thông tin dịch vụ</title>
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
                            <h2>TẠO THÔNG TIN DỊCH VỤ</h2>
                        </div>
                        <div class="body">
                            <form:form id="form-create-service" action="${contextPath}/dichvu/create" method="post" modelAttribute="dichVu">
                                <form:label path="maDV">Mã DV: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="maDV" class="form-control" placeholder="ID" tabindex="1" />
                                    </div>
                                </div>
                                <form:label path="tenDV">Tên DV: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="tenDV" class="form-control" placeholder="Name" tabindex="2" />
                                    </div>
                                </div>
                                <form:label path="donViTinh">Đơn Vị: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="donViTinh" class="form-control" placeholder="Unit" tabindex="3" />
                                    </div>
                                </div>
                                <form:label path="donGia">Giá: <span style="color: red;"> *</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="donGia" class="form-control" placeholder="Price" tabindex="4" />
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary btn-custom" tabindex="5"><i class="fa fa-check" aria-hidden="true"></i> Add</button>
                                <a href="${contextPath}/dichvu/list" class="btn btn-primary btn-custom" tabindex="6"><i class="fa fa-remove" aria-hidden="true"></i> Back</a>
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