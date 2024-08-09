<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!-- Sidebar  -->
<section>
    <!-- Left Sidebar -->
    <aside id="leftsidebar" class="sidebar">
        <!-- Menu -->
        <div class="menu" id="sidebarAdmin">
            <ul class="list">
             <li class="header">
                    <a href="${contextPath}/index"><span>TRANG CHU</span></a>
                </li>
                <li class="header">
                    <a href="${contextPath}/suDungMay/create"><span>Dang ky may</span></a>
                </li>
                <li class="header">
                    <a href="${contextPath}/suDungDichVu/create"><span>Dang ky dich vu</span></a>
                </li>
                <li class="header">
                    <a href="${contextPath}/su-dung-info/list"><span>Thong tin su dung</span></a>
                </li>
            </ul>
        </div>
        <!-- #Menu -->
    </aside>
    <!-- #END# Left Sidebar -->
</section>