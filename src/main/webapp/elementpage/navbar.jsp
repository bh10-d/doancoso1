<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:31 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav>
    <div class="navbar">
        <div class="nav-sign">
            <button type="button" onclick="openBtn()">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div id="myNav" class="bars-reponsive">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <div class="bars-reponsive-content">
                <a href="Index">TRANG CHỦ</a>
                <a href="gioithieu.jsp">GIỚI THIỆU</a>
                <a href="StoreControl">CỬA HÀNG</a>
                <a href="blog.jsp">TIN TỨC</a>
                <a href="lienhe.jsp">LIÊN HỆ</a>
            </div>
        </div>
        <div class="navbar-link">
            <a href="Index">TRANG CHỦ</a>
            <a href="gioithieu.jsp">GIỚI THIỆU</a>
            <a href="StoreControl">CỬA HÀNG</a>
            <a href="blog.jsp">TIN TỨC</a>
            <a href="lienhe.jsp">LIÊN HỆ</a>
        </div>
        <div class="search-sign">
            <button type="button" onclick="openSearch()">
                <i class="fa fa-search"></i>
            </button>
        </div>
        <div id="mySearch" class="search-responsive">
            <a href="javascript:void(0)" class="closebtn" onclick="closeSearch()">&times;</a>
            <div class="search-responsive-content">
                <form action="#">
                    <input type="text" placeholder="Search...">
                    <button type="submit"><i class="fa fa-search"></i></button>
                </form>
            </div>
        </div>
        <div class="SignIn-LogIn-nav">
            <button type="button">
                <i class="fas fa-sign-in-alt"></i>
            </button>
        </div>
    </div>
</nav>
