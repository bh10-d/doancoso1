<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:05 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <title>Cửa Hàng</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/style-raucu.css">

    <!-- link bootstrap for Login Logout -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
<!-- <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation"></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="dropdownId" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                <div class="dropdown-menu" aria-labelledby="dropdownId">
                    <a class="dropdown-item" href="#">Action 1</a>
                    <a class="dropdown-item" href="#">Action 2</a>
                </div>
            </li>
        </ul>
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
        </form>
    </div>
</nav> -->
<!-- phan dau cua trang web -->
<jsp:include page="elementpage/header.jsp"/>

<!-- navigation -->
<jsp:include page="elementpage/navbar.jsp"/>

<!--Main-->
<div class="bg-light">
    <div class="container-fluid" id="tag-tool">
        <div class="tag">
            <a href="trangchu.html" style="font-weight: bold;">TRANG CHỦ</a>
            <span>/</span>
            <a href="DoKho.html" class="active" style="color: black;font-weight: bold;">ĐỒ KHÔ</a>
        </div>
        <div class="searching">
            <form>
                <input type="text" id="text-type" name="search" placeholder="Nhập Sản Phẩm...">
            </form>
        </div>
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
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/daudo.jpg"
                                     alt="img-1">
                                <span class="product-title">Đậu đỏ</span>
                                <span class="d-block">5,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/hat-sen-kho.jpg"
                                     alt="img-2">
                                <span class="product-title">Hạt sen khô</span>
                                <span class="d-block">8,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/hathanhnhan.jpg"
                                     alt="img-3">
                                <span class="product-title">Hạt hạnh nhân</span>
                                <span class="d-block">10,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/nhoko.jpg"
                                     alt="img-4">
                                <span class="product-title">Nho khô</span>
                                <span class="d-block">10,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/qua-oc-cho.jpg"
                                     alt="img-5">
                                <span class="product-title">Hạt óc chó</span>
                                <span class="d-block">15,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                    </ul>
                </aside>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-8 col-lg-9">
                <div class="row product-all">
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/qua-oc-cho.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Hạt óc chó</span>
                                    <span class="price"><span>Giá:&nbsp;</span>15,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/rongbienkho.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Rong biển khô</span>
                                    <span class="price"><span>Giá:&nbsp;</span>15,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/hat-sen-kho.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Hạt sen khô</span>
                                    <span class="price"><span>Giá:&nbsp;</span>8,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/nhoko.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Nho khô</span>
                                    <span class="price"><span>Giá:&nbsp;</span>10,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/hat-de-cuoi.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Hạt dẻ cười</span>
                                    <span class="price"><span>Giá:&nbsp;</span>5,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/hatde.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Hạt dẻ</span>
                                    <span class="price"><span>Giá:&nbsp;</span>5,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/nam_van_chi.png" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Nấm mèo</span>
                                    <span class="price"><span>Giá:&nbsp;</span>15,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/daudo.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Đậu đỏ</span>
                                    <span class="price"><span>Giá:&nbsp;</span>5,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
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
<script src="javascript.js"></script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>