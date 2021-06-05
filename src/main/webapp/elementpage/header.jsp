<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:30 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <link rel="stylesheet" href="css/style-uploadproduct.css">
</head>
<header>
    <div class="header">
        <div class="logo">
            <a href="trangchu.html"><img src="Image/logo.png" alt=""></a>
        </div>
        <div class="navbar-search">
            <form action="#">
                <input type="text" name="search" placeholder="Search...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </form>
        </div>



    <c:set var = "account" value="${sessionScope.account}"/>
        <c:if test="${account == NULL}">
            <jsp:include page="login-register.jsp"/>
        </c:if>
        <c:if test="${account != NULL}">
            <div class="dropdown bg-dark" style="color: rebeccapurple;">
                <button type="button" class="btn btn-dark dropdown-toggle" data-toggle="dropdown">
                    <img class="avatar" src="Image/account-avatar.jpg"><c:out value="${account}"/>
                </button>
                <div class="dropdown-menu bg-dark">
                    <a class="dropdown-item text-white" href="Infouser">Chỉnh sửa thông tin cá nhân</a>
                    <a class="dropdown-item text-white" href="uploadproduct.jsp">Đăng bán sản phẩm</a>
                    <a class="dropdown-item text-white" href="ManaControl">Quản lý bài đăng</a>
                    <a class="dropdown-item text-white" href="LogoutControl"><i class="fas fa-sign-out-alt"></i> Đăng xuất</a>
                </div>
            </div>
        </c:if>
    </div>
</header>
