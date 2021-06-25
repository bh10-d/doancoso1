<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:06 SA
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


        <!-- <div class="SignIn-LogIn">
      <button type="submit" class="btn btn-outline-primary">Sign up</button>
      <button type="submit" class="btn btn-outline-success">Log in</button>
  </div> -->



        <!-- login register.... -->
        <div class="SignIn-LogIn">
            <a href="register.html" class="btn bg-btn" data-toggle="modal" data-target="#myRegister">Đăng kí</a>
            <div class="modal fade" id="myRegister">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="modal-title">Đăng kí</div>
                        </div>
                        <div class="modal-body">
                            <form action="#" class="needs-validation" novalidate>

                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <input class="form-control" type="text" name="firstname"
                                                       id="firstname" placeholder="Nhập họ" required>
                                                <label for="firstname">Họ</label>
                                                <div class="valid-feedback">Có hiệu lực</div>
                                                <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <input class="form-control" type="text" name="lastname"
                                                       id="lastname" placeholder="Nhập tên" required>
                                                <label for="lastname">Tên</label>
                                                <div class="valid-feedback">Có hiệu lực</div>
                                                <div class="invalid-feedback">Vui lòng điến vào trường này</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-label-group">
                                        <input class="form-control" type="text" name="uname" id="uname"
                                               placeholder="Nhập tên tài khoản" required>
                                        <label for="uname">Nhập tên tài khoản</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-label-group">
                                        <input class="form-control" type="email" name="email" id="email"
                                               placeholder="Nhập email" required>
                                        <label for="email">Nhập email</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-row">
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <input class="form-control" type="password" name="pwd" id="pwd"
                                                       placeholder="Nhập mật khẩu" required>
                                                <label for="pwd">Nhập mật khẩu</label>
                                                <div class="valid-feedback">Có hiệu lực</div>
                                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-label-group">
                                                <input class="form-control" type="password" name="rpwd" id="rpwd"
                                                       placeholder="Nhập lại mật khẩu" required>
                                                <label for="rpwd">Nhập lại mật khẩu</label>
                                                <div class="valid-feedback">Có hiệu lực</div>
                                                <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label" for="">
                                        <input class="form-check-input" type="checkbox" name="remember" required>Tôi
                                        đồng ý tất cả
                                        các điều khoản
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </label>
                                </div>
                                <div class="text-center">
                                    <div class="row">
                                        <div class="col-md-3">
                                            <a href="loginv2.html" class="btn text-primary">Đăng nhập</a>
                                        </div>
                                        <div class="col-md-9">
                                            <button type="submit" class="btn btn-primary register">Đăng kí</button>
                                        </div>
                                    </div>

                                </div>
                            </form>
                            <div class="text-center">
                                <a class="small" href="#">Quên mật khẩu?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a href="loginv2.html" class="btn bg-btn" data-toggle="modal" data-target="#myLogin">Đăng nhập</a>
            <div class="modal fade" id="myLogin">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header justify-content-center">
                            <h4 class="modal-title">Đăng Nhập</h4>
                        </div>
                        <div class="modal-body text-left">
                            <form action="/panel.html" class="needs-validation" novalidate>
                                <div class="form-group">
                                    <div class="form-label-group">
                                        <input type="text" class="form-control" id="username"
                                               placeholder="Tài khoản" name="email" required>
                                        <label for="username">Tài Khoản</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-label-group">
                                        <input type="password" class="form-control" id="pwdd" placeholder="Mật khẩu"
                                               name="pswd" required>
                                        <label for="pwdd">Mật khẩu</label>
                                        <div class="valid-feedback">Có hiệu lực</div>
                                        <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                                    </div>
                                </div>
                                <div class="form-group form-check">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" name="remember"> Ghi nhớ
                                        đăng nhập
                                    </label>
                                </div>
                                <div class="row">
                                    <div class="col text-center">
                                        <button type="submit" class="btn btn-primary">Đăng nhập</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end login register -->


    </div>
</header>

<!-- navigation -->
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
                <a href="trangchu.html">TRANG CHỦ</a>
                <a href="gioithieu.html">GIỚI THIỆU</a>
                <!-- cửa hàng -->

                <!-- end -->
                <a href="RauCu.html">CỬA HÀNG</a>
                <a href="blog.html">TIN TỨC</a>
                <a href="lienhe.html">LIÊN HỆ</a>
            </div>

        </div>


        <div class="navbar-link">
            <div class="head-link"><a href="trangchu.html">TRANG CHỦ</a></div>
            <div class="head-link"><a href="gioithieu.html">GIỚI THIỆU</a></div>

            <!-- chổ ni xổ xuống -->
            <div class="dropdown">
                <div class="head-link"><a href="">CỬA HÀNG</a></div>
                <div class="dropdown-content">
                    <ul>
                        <li><a href="RauCu.html">Rau Củ</a></li>
                        <li><a href="HaiSan.html">Hải Sản</a></li>
                        <li><a href="TraiCay.html">Trái Cây</a></li>
                        <li><a href="DoUong.html">Đồ Uống</a></li>
                        <li><a href="DoKho.html">Đồ Khô</a></li>
                        <li><a href="ThitTrung.html">Thịt Trứng</a></li>
                    </ul>
                </div>
            </div>


            <!-- <a href="RauCu.html">CỬA HÀNG</a> -->
            <div class="head-link"><a href="blog.html">TIN TỨC</a></div>
            <div class="head-link"><a href="lienhe.html">LIÊN HỆ</a></div>
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

<!--Main-->
<div class="bg-light">
    <div class="container-fluid" id="tag-tool">
        <div class="tag">
            <a href="trangchu.html" style="font-weight: bold;">TRANG CHỦ</a>
            <span>/</span>
            <a href="TraiCay.html" class="active" style="color: black;font-weight: bold;">TRÁI CÂY</a>
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
                                <span class="badge dot">12</span>
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
                                <img style="width: 60px;height: 60px;float: left;" src="Image/chanh_ko_hat.jpg"
                                     alt="img-1">
                                <span class="product-title">Chanh</span>
                                <span class="d-block">85,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/dautaydalat.jpg"
                                     alt="img-2">
                                <span class="product-title">Dâu Tây</span>
                                <span class="d-block">55,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/chuoi.jpg"
                                     alt="img-3">
                                <span class="product-title">Chuối</span>
                                <span class="d-block">35,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/cachua.jpg"
                                     alt="img-4">
                                <span class="product-title">Cà chua</span>
                                <span class="d-block">75,000&nbsp;<span>₫</span></span>
                            </a>
                        </li>
                        <li class="list-group-item" style="width: 100%;float: left;">
                            <a href="">
                                <img style="width: 60px;height: 60px;float: left;" src="Image/nho_mi.jpg"
                                     alt="img-5">
                                <span class="product-title">Nho</span>
                                <span class="d-block">145,000&nbsp;<span>₫</span></span>
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
                                <img style="width: 200px;height: 200px;" src="Image/dautaydalat.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Dâu Tây</span>
                                    <span class="price"><span>Giá:&nbsp;</span>55,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/Buoi.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Bưởi</span>
                                    <span class="price"><span>Giá:&nbsp;</span>75,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/cachua.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Cà chua</span>
                                    <span class="price"><span>Giá:&nbsp;</span>75,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/tao.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Táo</span>
                                    <span class="price"><span>Giá:&nbsp;</span>20,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/cam-xoan-4.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Cam xoàn hướng</span>
                                    <span class="price"><span>Giá:&nbsp;</span>65,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/chanh_ko_hat.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Chanh</span>
                                    <span class="price"><span>Giá:&nbsp;</span>85,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/chuoi.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Chuối</span>
                                    <span class="price"><span>Giá:&nbsp;</span>35,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/nho_mi.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Nho</span>
                                    <span class="price"><span>Giá:&nbsp;</span>145,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/xoai.png" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Xoài</span>
                                    <span class="price"><span>Giá:&nbsp;</span>25,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/saurieng.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Sầu riêng</span>
                                    <span class="price"><span>Giá:&nbsp;</span>135,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;"
                                     src="Image/anh-dai-dien-thanh-long-trăng.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Thanh long</span>
                                    <span class="price"><span>Giá:&nbsp;</span>45,000&nbsp;<span>₫</span></span>
                                </div>
                                <button type="button" name="" id=""
                                        class="btn btn-primary btn-lg center-post Mua">Mua Ngay</button>
                            </a>
                        </div>
                    </div>
                    <div class="col-xs-3 col-sm-6 col-md-6 col-lg-3">
                        <div class="form-3">
                            <a href="">
                                <img style="width: 200px;height: 200px;" src="Image/oi.jpg" alt="">
                                <div class="BG-1">
                                    <span style="display:block;" class="name-label">Ổi</span>
                                    <span class="price"><span>Giá:&nbsp;</span>25,000&nbsp;<span>₫</span></span>
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
<footer>
    <h2>Hãy đến với chúng tôi</h2>
    <div class="all-element-footer">

        <div class="element-footer-info">
            <div class="logo">
                <a href="trangchu.html"></a><img src="Image/logo.png" alt="">
            </div>


            <p><span><i class="fas fa-map-marker-alt"></i></span>193 Nguyễn Lương Bằng, Quận Liên Chiểu,<br>TP. Đà
                Nẵng</p>
            <p><span><i class="fas fa-phone"></i></span>0123456789</p>
            <p><span><i class="fas fa-envelope"></i></span>ahihi@gmail.com</p>
            <p><span><i class="fab fa-facebook-square"></i></span>https://facebook/info/huyleader</p>

        </div>

        <div class="element-footer">
            <h5>Sản phẩm</h5>
            <a href="RauCu.html" class="footer-link">Rau củ</a>
            <a href="HaiSan.html" class="footer-link">Hải sản</a>
            <a href="TraiCay.html" class="footer-link">Trái cây</a>
            <a href="DoUong.html" class="footer-link">Đồ uống</a>
            <a href="DoKho.html" class="footer-link">Đồ khô</a>
            <a href="ThitTrung.html" class="footer-link">Thịt trứng</a>
        </div>

        <div class="element-footer">
            <h5>Danh mục</h5>
            <a href="trangchu.html" class="footer-link">Trang chủ</a>
            <a href="gioithieu.html" class="footer-link">Giới thiệu</a>
            <a href="RauCu.html" class="footer-link">Cửa hàng</a>
        </div>

        <div class="element-footer">
            <h5>Dịch vụ</h5>
            <a href="lienhe.html" class="footer-link">Liên hệ</a>
            <a href="blog.html" class="footer-link">Tin tức</a>
        </div>

        <div class="element-footer">
            <h5>Đăng kí</h5>
            <p>Đăng kí để nhận được thông tin mới nhất từ chúng tôi</p>

            <div class="footer-container-form">
                <form action="#">
                    <input type="text">
                    <button type="submit"><i class="far fa-paper-plane"></i></button>
                </form>
            </div>

            <div class="link-social">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
            </div>


        </div>
    </div>

</footer>




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
