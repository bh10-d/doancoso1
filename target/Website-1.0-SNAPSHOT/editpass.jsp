<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style-blog.css">
    <link rel="stylesheet" href="glide.theme.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <link rel="stylesheet" href="css/style-managerproduct.css">
    <link rel="stylesheet" href="css/style-uploadproduct.css">


    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <style>
        /* :root{
    --bg1 : #9b59b6;
    --bg2 : #3498db;
} */

        .title-table{
            border: 1px solid black; border-radius: 5px; margin-left: 10px;margin-top: 10px;margin-bottom: 10px;padding: 10px;
            background: linear-gradient(to bottom right,var(--bg1),var(--bg2));
        }

        .ele-table{
            margin-left: 10px; padding: 10px;
            cursor: pointer;
            transition: 0.5s;
        }
        .ele-table::before{
            content: '';
            position: absolute;
            width: 100%;
            height: 35px;
            background: #bada55;
            transform: scaleX(0);
            transform-origin: left;
            transition: 0.5s;
        }
        .ele-table:hover::before{
            transform: scaleX(1);
        }
        /*.ele-table:hover{*/
        /*    background-color: #73AD21;*/
        /*}*/
    </style>
    <title>Tin Tức</title>
</head>

<body>

<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>
<div class="container uploadbd">
    <div class="row">
        <div class="col-xl-4 col-lg-4 col-sm-12"
             style="height: 1000px; box-shadow: 5px 7px 20px black; border-radius: 5px;">
            <h2>Quản lý tài khoản</h2>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a href="Infouser" class="nav-link">Chỉnh sửa thông tin cá nhân</a>
                </li>
                <li class="nav-item">
                    <a href="Uploadproduct" class="nav-link">Đăng bán sản phẩm</a>
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
                        <a href="ManagerAccount" class="nav-link bg-h">Tài khoản đã đăng kí vào hệ thống</a>
                    </li>
                </c:if>
            </ul>
        </div>
        <div class="col-xl-8 col-lg-8 col-sm-12">
            <h2>Chỉnh sửa mật khẩu</h2>
<%--            <div class="">--%>
<%--                <div class="row text-center title-table">--%>
<%--                    <div class="col-2">id</div>--%>
<%--                    <div class="col-3">username</div>--%>
<%--                    <div class="col-3">password</div>--%>
<%--                    <div class="col-2">&lt;%&ndash;Chỉnh sửa&ndash;%&gt;</div>--%>
<%--                    <div class="col-2">&lt;%&ndash;Xoá&ndash;%&gt;</div>--%>
<%--                </div>--%>
<%--                --%>
<%--            </div>--%>
            <form action="EditAccountgetid?id=${sessionScope.idaccount}" method="post">
                <div class="form-group">
                    <label for="password">Nhập mật khẩu mới: </label>
                    <input type="text" name="password" id="password" class="form-control" placeholder="Nhập mật khẩu">
                </div>
                <div class="form-group" <c:if test="${requestScope.password != requestScope.repassword}">style="border: 1px solid red" </c:if></div>
                    <label for="repassword">Nhập lại mật khẩu mới: </label>
                    <input type="text" name="repassword" id="repassword" class="form-control" placeholder="Nhập lại mật khẩu">
                </div>
                <button type="submit" class="btn btn-success">Cập nhật</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Huỷ</button>
            </form>
        </div>
    </div>
</div>
<script src="js/javascript.js"></script>
</body>

</html>