<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>List student</title>
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
                        <h2>DANH SÁCH ĐĂNG KÝ SỬ DỤNG MÁY</h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-striped" id="dataTable-listMachineUsage">
                            <thead>
                                <tr>
                                    <th>Mã KH</th>
                                    <th>Mã Máy</th>
                                    <th>Ngaybatdausudung</th>
                                    <th>GioBatDauSuDung</th>
                                    <th>ThoiGianSuDung</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:choose>
                                    <c:when test="${not empty listSuDungMays}">
                                        <c:forEach items="${listSuDungMays}" var="suDungMay">
                                            <tr>
                                                <td>${suDungMay.id.maKH}</td>
                                                <td>${suDungMay.id.maMay}</td>
                                                <td>${suDungMay.id.ngayBatDauSuDung}</td>
                                                <td>${suDungMay.id.gioBatDauSuDung}</td>
                                                <td>${suDungMay.thoiGianSuDung}</td>
                                                <td>
                                                    <!-- Add your action links here -->
                                                    <!-- Example: -->
                                                    <!-- <a href="${contextPath}/suDungMay/update?id=${suDungMay.id.maKH}&maMay=${suDungMay.id.maMay}">Update</a> -->
                                                    <!-- <a href="${contextPath}/suDungMay/delete?id=${suDungMay.id.maKH}&maMay=${suDungMay.id.maMay}">Delete</a> -->
                                                    <!-- <a href="${contextPath}/suDungMay/detail?id=${suDungMay.id.maKH}&maMay=${suDungMay.id.maMay}">Detail</a> -->
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <tr>
                                            <td colspan="6" style="text-align: center">No record</td>
                                        </tr>
                                    </c:otherwise>
                                </c:choose>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Striped Rows -->
    </div>
</section>
	<jsp:include page="/WEB-INF/layout/script.jsp" />
	<jsp:include page="/WEB-INF/layout/footer.jsp" />
</body>
</html>