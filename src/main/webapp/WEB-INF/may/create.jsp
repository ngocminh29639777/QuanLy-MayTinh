<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Tạo máy mới</title>
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
                        <h2>TẠO MÁY MỚI</h2>
                    </div>
                    <div class="body">
                        <form:form id="form-create-may" action="${contextPath}/may/create" method="post" modelAttribute="may">
                            <form:label path="maMay">Ma May: <span style="color: red;">*</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="maMay" class="form-control" placeholder="Ma May" tabindex="1"/>
                                    <span class="error-msg" id="maMay-error"><form:errors path="maMay"/></span>
                                </div>
                            </div>
                            <form:label path="viTri">Vi Tri: <span style="color: red;">*</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="viTri" class="form-control" placeholder="Vi Tri" tabindex="2"/>
                                    <span class="error-msg" id="viTri-error"><form:errors path="viTri"/></span>
                                </div>
                            </div>
                            <form:label path="trangThai">Trang Thai: <span style="color: red;">*</span></form:label>
                            <div class="form-group">
                                <div class="form-line">
                                    <form:input path="trangThai" class="form-control" placeholder="Trang Thai" tabindex="3"/>
                                    <span class="error-msg" id="trangThai-error"><form:errors path="trangThai"/></span>
                                </div>
                            </div>
                            <button type="submit" class="btn btn-primary" tabindex="4"><i class="fa fa-check"></i> Add</button>
                            <a href="${contextPath}/may/list" class="btn btn-danger" tabindex="5"><i class="fa fa-remove"></i> Cancel</a>
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