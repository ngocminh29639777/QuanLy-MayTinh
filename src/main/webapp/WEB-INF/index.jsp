<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Quan Ly May</title>
	<link rel="stylesheet" href="/resources/css/index.css">
	<jsp:include page="/WEB-INF/layout/header.jsp" />
</head>
<body>
	<jsp:include page="/WEB-INF/layout/page-loader.jsp" />
    <jsp:include page="/WEB-INF/layout/navbar.jsp" />
    <jsp:include page="/WEB-INF/layout/sidebar.jsp" />
    
    <section class="content">
      
    </section>
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>