<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thông tin sử dụng máy</title>
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
                            <h2>
                                THÔNG TIN SỬ DỤNG MÁY
                            </h2>
                        </div>
                        <div class="body table-responsive">
                            <table class="table table-striped" id="dataTable-listSuDungInfo">
                                <thead>
                                    <tr>
                                        <th>Mã KH</th>
                                        <th>Tên KH</th>
                                        <th>Mã máy</th>
                                        <th>Vị trí máy</th>
                                        <th>Trạng thái máy</th>
                                        <th>Ngày bắt đầu sử dụng máy</th>
                                        <th>Giờ bắt đầu sử dụng máy</th>
                                        <th>Thời gian sử dụng máy</th>
                                        <th>Mã dịch vụ</th>
                                        <th>Ngày sử dụng dịch vụ</th>
                                        <th>Giờ sử dụng dịch vụ</th>
                                        <th>Số lượng</th>
                                        <th>Tổng tiền</th>
                                        <th>Đơn giá</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:choose>
                                        <c:when test="${not empty listSuDungInfo}">
                                            <c:forEach items="${listSuDungInfo}" var="listSuDungInfo">
                                                <tr>
                                                    <td>${listSuDungInfo.maKH}</td>
                                                    <td>${listSuDungInfo.tenKH}</td>
                                                    <td>${listSuDungInfo.maMay}</td>
                                                    <td>${listSuDungInfo.viTriMay}</td>
                                                    <td>${listSuDungInfo.trangThaiMay}</td>
                                                    <td>${listSuDungInfo.ngayBatDauSuDungMay}</td>
                                                    <td>${listSuDungInfo.gioBatDauSuDungMay}</td>
                                                    <td>${listSuDungInfo.thoiGianSuDungMay}</td>
                                                    <td>${listSuDungInfo.maDV}</td>
                                                    <td>${listSuDungInfo.ngaySuDungDV}</td>
                                                    <td>${listSuDungInfo.gioSuDungDV}</td>
                                                    <td>${listSuDungInfo.soLuong}</td>
                                                    <td>${listSuDungInfo.tongTien}</td>
                                                    <td>${listSuDungInfo.donGia}</td>
                                                </tr>
                                            </c:forEach>
                                        </c:when>
                                        <c:otherwise>
                                            <td colspan="13" style="text-align: center">No record</td>
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