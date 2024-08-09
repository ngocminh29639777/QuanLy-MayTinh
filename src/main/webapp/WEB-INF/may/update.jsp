<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cập nhật máy</title>
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
                            <h2>CẬP NHẬT MÁY</h2>
                        </div>
                        <div class="body">
                            <form:form action="${contextPath}/may/update" method="post" modelAttribute="may">
                                <form:label path="maMay">Machine ID: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="maMay" class="form-control" placeholder="Machine ID" readonly="true" />
                                    </div>
                                </div>
                                <form:label path="viTri">Location: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="viTri" class="form-control" placeholder="Location" />
                                    </div>
                                </div>
                                <form:label path="trangThai">Status: <span style="color: red;">*</span></form:label>
                                <div class="form-group">
                                    <div class="form-line">
                                        <form:input path="trangThai" class="form-control" placeholder="Status" />
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> Update</button>
                                <a href="${contextPath}/may/list" class="btn btn-danger"><i class="fa fa-remove"></i> Cancel</a>
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