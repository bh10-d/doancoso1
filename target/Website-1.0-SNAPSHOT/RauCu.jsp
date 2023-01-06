<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:06 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
    <title>Cửa Hàng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/style-raucu.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

    <link rel="stylesheet" href="css/style-blog.css">

    <!--2 button dang nhap dang ky thi dung css style-login-signup-->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <!--check co nhap du cac truong hay chua-->
    <script src="js/vadi-login-signup.js"></script>
    <!-- <link rel="stylesheet" href="glide.theme.min.css"> -->
    <!--End.....-->
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
</head>

<body>
<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>

<!--Main-->
<div class="bg-light">
    <div class="container-fluid" id="tag-tool">
        <div class="tag">
            <a href="" style="font-weight: bold;">TRANG CHỦ</a>
            <span>/</span>
            <a href="RauCu.html" class="active" style="color: black;font-weight: bold;">RAU CỦ</a>
        </div>
<%--        <div class="searching">--%>
<%--            <form>--%>
<%--                <input type="text" id="text-type" name="search" placeholder="Nhập Sản Phẩm...">--%>
<%--            </form>--%>
<%--        </div>--%>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-0 col-sm-0 col-md-4 col-lg-3">
                <aside>
                    <span class="list-group-item" id="list-product-title">DANH MỤC SẢN PHẨM</span>
                    <ul class="list-group list-product">
                        <a href="RauCu.html" class="list-group-item">
                            <li>
                                <span class="badge dot">11</span>
                                <span>Rau củ</span>
                            </li>
                        </a>
                        <a href="HaiSan.html" class="list-group-item">
                            <li>
                                <span class="badge dot">5</span>
                                <span>Hải sản</span>
                            </li>
                        </a>
                        <a href="TraiCay.html" class="list-group-item">
                            <li>
                                <span class="badge dot">12</span>
                                <span>Trái cây</span>
                            </li>
                        </a>
                        <a href="DoUong.html" class="list-group-item">
                            <li>
                                <span class="badge dot">6</span>
                                <span>Đồ uống</span>
                            </li>
                        </a>
                        <a href="DoKho.html" class="list-group-item">
                            <li>
                                <span class="badge dot">8</span>
                                <span>Đồ khô</span>
                            </li>
                        </a>
                        <a href="ThitTrung.html" class="list-group-item">
                            <li>
                                <span class="badge dot">5</span>
                                <span>Thịt trứng</span>
                            </li>
                        </a>
                    </ul>
                </aside>
                <aside id="form-2">
                    <span class="list-group-item" id="list-title">SẢN PHẨM PHỔ BIẾN</span>
                    <ul class="list-group list-commoner">
                        <c:forEach items="${requestScope.productlist}" var="product" varStatus="loop">
                            <c:if test="${loop.index<5}">
                            <li class="list-group-item" style="width: 100%;float: left;">
                                <a href="">
                                    <img style="width: 60px;height: 60px;float: left;" src="${product.imgurl}"
                                         alt="img-1">
                                    <span class="product-title">${product.name}</span>
                                    <span class="d-block">${product.price}&nbsp;<span>₫</span></span>
                                </a>
                            </li>
                            </c:if>
                        </c:forEach>
                    </ul>
                </aside>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9">
                <div class="row product-all">
                    <c:forEach items="${requestScope.productlist}" var="product">
                        <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                            <div class="form-3">
                                <a href="">
                                    <img style="width: 200px;height: 200px;"
                                         src="${product.imgurl}" alt="">
                                    <div class="BG-1">
                                        <span style="display:block;" class="name-label">${product.name}</span>
                                        <span class="price"><span>Giá:&nbsp;</span>${product.price}&nbsp;<span>₫</span></span>
                                    </div>
<%--                                    <button type="button" name="" id=""--%>
<%--                                            class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>--%>
                                    <a class=" btn btn-primary btn-lg center-post" href="cart?id=${product.idproduct}" >Mua ngay</a>
                                </a>
                            </div>
                        </div>
                    </c:forEach>
<%--                    <jsp:include page="elementpage/product.jsp"/>--%>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- html footer  -->

<jsp:include page="elementpage/footer.jsp"/>



<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>
<script src="js/javascript.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->

</body>

</html>
