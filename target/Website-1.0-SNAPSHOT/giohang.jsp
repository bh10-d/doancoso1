<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 11/06/2021
  Time: 4:26 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="js/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="css/style-blog.css">
    <link rel="stylesheet" href="glide.theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
<%--    <link rel="stylesheet" href="css/style-uploadproduct.css">--%>
    <!-- <link rel="stylesheet" href="css/style-giohang.css"> -->
    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Giỏ hàng</title>
    <style>
        .imgproduct{
            width: 100px;
            height: auto;
        }
    </style>
</head>
<body>
<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>
<div class="container">
    <h2 class="">Thông tin đơn hàng</h2>
    <div class="row text-center bg-light mt-5">
        <div class="col-3"><h5>Sản phẩm</h5></div>
        <div class="col-3"><h5>Tên sản phẩm</h5></div>
        <div class="col-3"><h5>Giá sản phẩm</h5></div>
        <div class="col-2"><h5>Số lượng</h5></div>
    </div>
    <div class="row text-center" style="border: 2px solid #f8f8f8;">
        <div class="col-3">
            <img class="imgproduct" src="Image/chuoi.jpg" alt="">
        </div>
        <div class="col-3 mt-3">
            <h4>chuối</h4>
        </div>
        <div class="col-3 mt-3">
            <h4>50.000 vnđ</h4>
        </div>
        <div class="col-2 mt-3">
            <input class="text-center" type="number" value="1" style="width: 100px;">
        </div>
        <div class="col-1 mt-3">
            <a href=""><i class="far fa-trash-alt"></i></a>
        </div>
    </div>
    <div class="row text-center" style="border: 2px solid #f8f8f8;">
        <div class="col-3">
            <img class="imgproduct" src="Image/chuoi.jpg" alt="">
        </div>
        <div class="col-3 mt-3">
            <h4>chuối</h4>
        </div>
        <div class="col-3 mt-3">
            <h4>50.000 vnđ</h4>
        </div>
        <div class="col-2 mt-3">
            <input class="text-center" type="number" value="1" style="width: 100px;">
        </div>
        <div class="col-1 mt-3">
            <a href=""><i class="far fa-trash-alt"></i></a>
        </div>
    </div>
    <div class="row mt-5">
        <div class="col-4"><a href="StoreControl" class="btn btn-primary"> < Mua tiếp</a></div>
        <div class="col-4 text-right"><h5>Tổng tiền: 100000 vnđ</h5></div>
        <div class="col-4 text-right"><a href="thanhtoan.jsp" class="btn btn-success">Thanh toán ></a></div>

    </div>
</div>
<jsp:include page="elementpage/footer.jsp"/>
</body>
</html>
