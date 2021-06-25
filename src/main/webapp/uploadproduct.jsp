<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


    <link rel="stylesheet" href="glide.theme.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-blog.css">
    <link rel="stylesheet" href="css/style-login-signup.css">
    <link rel="stylesheet" href="css/style-uploadproduct.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Tin Tức</title>
</head>

<body>
<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>
<div class="container uploadbd">
    <div class="row">
        <div class="col-xl-4 col-lg-4 col-sm-12" style="height: 1000px; box-shadow: 5px 7px 20px black; border-radius: 5px;">
            <h2>Quản lý tài khoản</h2>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a href="Infouser" class="nav-link">Chỉnh sửa thông tin cá nhân</a>
                </li>
                <li class="nav-item">
                    <a href="Uploadproduct" class="nav-link bg-h">Đăng bán sản phẩm</a>
                </li>
                <li class="nav-item">
                    <a href="ManaControl" class="nav-link">Quản lý bài đăng</a>
                </li>
                <li class="nav-item">
                    <a href="ManagerOrder" class="nav-link">Quản lý đơn hàng</a>
                </li>
                <c:set var="sessionaccount" value="${sessionScope.akou}"/>
                <c:if test="${sessionaccount == 0}">
                    <li class="nav-item">
                        <a href="ManagerAccount" class="nav-link">Tài khoản đã đăng kí vào hệ thống</a>
                    </li>
                </c:if>
            </ul>
        </div>
        <div class="col-xl-8 col-lg-8 col-sm-12">
            <h2>Đăng bán sản phẩm</h2>
            <form action="UlProduct" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">
                <div class="form-group">
                    <label for="namep">Tên Sản Phẩm:</label>
                    <input type="text" name="namep" id="namep" class="form-control" placeholder="Nhập tên sản phẩm">
                </div>
                <div class="form-group">
                    <label for="typep">Loại Sản Phẩm:</label>
                    <input type="text" name="typep" id="typep" class="form-control" placeholder="Nhập loại sản phẩm">
                </div>
                <div class="form-group">
                    <label for="pricep">Giá Sản Phẩm:</label>
                    <input type="text" name="pricep" id="pricep" class="form-control" placeholder="Nhập giá sản phẩm">
                </div>
                <div class="form-group">
                    <label for="photo">Thêm Ảnh:</label>
                    <input type="file" name="photo" id="photo" placeholder="Tải ảnh lên">
                </div>
                <div class="form-group">
                    <label for="detailp">Mô Tả Sản Phẩm:</label>
                    <textarea name="detailp" id="detailp" cols="70" rows="10" class="form-control" placeholder="Nhập mô tả"></textarea>
                    <!-- <input type="text" id="detailp" class="form-control" placeholder="Nhập mô tả"> -->
                </div>
                <div class="text-right">
                    <button type="submit" class="btn btn-primary">Đăng</button>
                    <button type="reset" class="btn btn-danger">Huỷ</button>
                </div>

            </form>
        </div>
    </div>
</div>
<jsp:include page="elementpage/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>

</html>