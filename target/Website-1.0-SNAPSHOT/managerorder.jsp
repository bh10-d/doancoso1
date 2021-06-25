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
    <link rel="stylesheet" href="css/style-blog.css">
    <link rel="stylesheet" href="glide.theme.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <link rel="stylesheet" href="css/style-managerproduct.css">
    <link rel="stylesheet" href="css/style-uploadproduct.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <style>
        tr td{
            border: 1px solid gray;
        }
        td{
            text-align: center;
            width: 250px;
            padding: 10px;
        }
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
                    <a href="ManagerOrder" class="nav-link bg-h">Quản lý đơn hàng</a>
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
            <h2>Quản lý đơn hàng</h2>
            <table style="border: 1px solid gray">
                <tr>
                    <td>Mã đơn hàng</td>
                    <td>Tên</td>
                    <td>Tổng tiền (VNĐ)</td>
                    <td>Tác vụ</td>
                </tr>
                <tr>
                    <td>abcxyz</td>
                    <td>hieu</td>
                    <td>100.000</td>
                    <td><a href="#">X</a></td>
                </tr>
                <tr>
                    <td>abcxyz</td>
                    <td>hieu</td>
                    <td>100.000</td>
                    <td><a href="#">X</a></td>
                </tr>
                <tr>
                    <td>abcxyz</td>
                    <td>hieu</td>
                    <td>100.000</td>
                    <td><a href="#">X</a></td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
