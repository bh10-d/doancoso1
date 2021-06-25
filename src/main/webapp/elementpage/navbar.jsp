<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:31 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="css/style-raucu.css">
<nav>
    <div class="navbar">
        <div class="nav-sign">
            <button type="button" onclick="openBtn()">
                <i class="fa fa-bars"></i>
            </button>
        </div>
        <div class="imgrespon">
            <a href="Trangchu"><img class="" src="Image/logonongsanvnv2.png" alt=""></a>
        </div>
        <div id="myNav" class="bars-reponsive">
            <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
            <div class="bars-reponsive-content">
                <a href="Trangchu">TRANG CHỦ</a>
                <a href="gioithieu.jsp">GIỚI THIỆU</a>
                <a href="StoreControl">CỬA HÀNG</a>
                <a href="blog.jsp">TIN TỨC</a>
                <a href="lienhe.jsp">LIÊN HỆ</a>
            </div>
        </div>
<%--        <div class="navbar-link">--%>
<%--            <a href="Trangchu">TRANG CHỦ</a>--%>
<%--            <a href="Gioithieu">GIỚI THIỆU</a>--%>
<%--            <a href="StoreControl">CỬA HÀNG</a>--%>
<%--            <a href="blog.jsp">TIN TỨC</a>--%>
<%--            <a href="lienhe.jsp">LIÊN HỆ</a>--%>
<%--        </div>--%>
        <div class="navbar-link">
            <div class="head-link"><a href="Trangchu">TRANG CHỦ</a></div>
            <div class="head-link"><a href="gioithieu.jsp">GIỚI THIỆU</a></div>

            <!-- chổ ni xổ xuống -->
            <div class="dropdown">
                <div class="head-link"><a href="StoreControl">CỬA HÀNG</a></div>
                <div class="dropdown-content">
                    <ul>
                        <li><a href="StoreControl">RAU CỦ</a></li>
                        <li><a href="HaiSan.jsp">HẢI SẢN</a></li>
                        <li><a href="TraiCay.jsp">TRÁI CÂY</a></li>
                        <li><a href="DoUong.jsp">ĐỒ UỐNG</a></li>
                        <li><a href="DoKho.jsp">ĐỒ KHÔ</a></li>
                        <li><a href="ThitTrung.jsp">THỊT TRỨNG</a></li>
                    </ul>
                </div>
            </div>


            <!-- <a href="RauCu.html">CỬA HÀNG</a> -->
            <div class="head-link"><a href="blog.jsp">TIN TỨC</a></div>
            <div class="head-link"><a href="lienhe.jsp">LIÊN HỆ</a></div>
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
<%--        <div class="SignIn-LogIn-nav">--%>
<%--            <button type="button">--%>
<%--                <i class="fas fa-sign-in-alt"></i>--%>
<%--            </button>--%>
<%--        </div>--%>
    </div>
</nav>
