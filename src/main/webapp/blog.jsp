<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:05 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <link rel="stylesheet" href="css/glide.theme.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Tin Tức</title>
</head>

<body>
<div>
<%--    <header>--%>
<%--        <div class="header">--%>
<%--            <div class="logo">--%>
<%--                <a href="trangchu.html"><img src="Image/logo.png" alt=""></a>--%>
<%--            </div>--%>
<%--            <div class="navbar-search">--%>
<%--                <form action="#">--%>
<%--                    <input type="text" name="search" placeholder="Search...">--%>
<%--                    <button type="submit"><i class="fas fa-search"></i></button>--%>
<%--                </form>--%>
<%--            </div>--%>

<%--            <!-- login register.... -->--%>
<%--            <div class="SignIn-LogIn">--%>
<%--                <a href="register.html" class="btn bg-btn" data-toggle="modal"--%>
<%--                   data-target="#myRegister">Đăng kí</a>--%>
<%--                <div class="modal fade" id="myRegister">--%>
<%--                    <div class="modal-dialog modal-dialog-centered">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header">--%>
<%--                                <div class="modal-title">Đăng kí</div>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                <form action="#" class="needs-validation" novalidate>--%>

<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-row">--%>
<%--                                            <div class="col-md-6">--%>
<%--                                                <div class="form-label-group">--%>
<%--                                                    <input class="form-control" type="text" name="firstname"--%>
<%--                                                           id="firstname" placeholder="Nhập họ" required>--%>
<%--                                                    <label for="firstname">Họ</label>--%>
<%--                                                    <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                                    <div class="invalid-feedback">Vui lòng điến vào trường này</div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-6">--%>
<%--                                                <div class="form-label-group">--%>
<%--                                                    <input class="form-control" type="text" name="lastname"--%>
<%--                                                           id="lastname" placeholder="Nhập tên" required>--%>
<%--                                                    <label for="lastname">Tên</label>--%>
<%--                                                    <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                                    <div class="invalid-feedback">Vui lòng điến vào trường này</div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-label-group">--%>
<%--                                            <input class="form-control" type="text" name="uname" id="uname"--%>
<%--                                                   placeholder="Nhập tên tài khoản" required>--%>
<%--                                            <label for="uname">Nhập tên tài khoản</label>--%>
<%--                                            <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                            <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-label-group">--%>
<%--                                            <input class="form-control" type="email" name="email" id="email"--%>
<%--                                                   placeholder="Nhập email" required>--%>
<%--                                            <label for="email">Nhập email</label>--%>
<%--                                            <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                            <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-row">--%>
<%--                                            <div class="col-md-6">--%>
<%--                                                <div class="form-label-group">--%>
<%--                                                    <input class="form-control" type="password" name="pwd" id="pwd"--%>
<%--                                                           placeholder="Nhập mật khẩu" required>--%>
<%--                                                    <label for="pwd">Nhập mật khẩu</label>--%>
<%--                                                    <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-6">--%>
<%--                                                <div class="form-label-group">--%>
<%--                                                    <input class="form-control" type="password" name="rpwd"--%>
<%--                                                           id="rpwd" placeholder="Nhập lại mật khẩu" required>--%>
<%--                                                    <label for="rpwd">Nhập lại mật khẩu</label>--%>
<%--                                                    <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group form-check">--%>
<%--                                        <label class="form-check-label" for="">--%>
<%--                                            <input class="form-check-input" type="checkbox" name="remember"--%>
<%--                                                   required>Tôi đồng ý tất cả--%>
<%--                                            các điều khoản--%>
<%--                                            <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                            <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                    <div class="text-center">--%>
<%--                                        <div class="row">--%>
<%--                                            <div class="col-md-3">--%>
<%--                                                <a href="loginv2.html" class="btn text-primary">Đăng nhập</a>--%>
<%--                                            </div>--%>
<%--                                            <div class="col-md-9">--%>
<%--                                                <button type="submit" class="btn btn-primary register">Đăng--%>
<%--                                                    kí</button>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>

<%--                                    </div>--%>
<%--                                </form>--%>
<%--                                <div class="text-center">--%>
<%--                                    <a class="small" href="#">Quên mật khẩu?</a>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <a href="loginv2.html" class="btn bg-btn" data-toggle="modal"--%>
<%--                   data-target="#myLogin">Đăng nhập</a>--%>
<%--                <div class="modal fade" id="myLogin">--%>
<%--                    <div class="modal-dialog modal-dialog-centered">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header justify-content-center">--%>
<%--                                <h4 class="modal-title">Đăng Nhập</h4>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body text-left">--%>
<%--                                <form action="/panel.html" class="needs-validation" novalidate>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-label-group">--%>
<%--                                            <input type="text" class="form-control" id="username"--%>
<%--                                                   placeholder="Nhập tài khoản" name="email" required>--%>
<%--                                            <label for="username">Tài Khoản</label>--%>
<%--                                            <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                            <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group">--%>
<%--                                        <div class="form-label-group">--%>
<%--                                            <input type="password" class="form-control" id="pwdd"--%>
<%--                                                   placeholder="Nhập mật khẩu" name="pswd" required>--%>
<%--                                            <label for="pwdd">Mật khẩu</label>--%>
<%--                                            <div class="valid-feedback">Có hiệu lực</div>--%>
<%--                                            <div class="invalid-feedback">Vui lòng điền vào trường này</div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                    <div class="form-group form-check">--%>
<%--                                        <label class="form-check-label">--%>
<%--                                            <input class="form-check-input" type="checkbox" name="remember"> Ghi nhớ--%>
<%--                                            đăng nhập--%>
<%--                                        </label>--%>
<%--                                    </div>--%>
<%--                                    <div class="row">--%>
<%--                                        <div class="col text-center">--%>
<%--                                            <button type="submit" class="btn btn-primary">Đăng nhập</button>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </form>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <!-- end login register -->--%>




<%--            <div class="con-registerForm">--%>
<%--                <div class="container">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </header>--%>
    <jsp:include page="elementpage/header.jsp"/>
</div>
<jsp:include page="elementpage/navbar.jsp"/>

<div class="imgbackg" style="background-image: url(Image/background1h.jpg);">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-12   left-side">
                <div class="color-b" style="margin-top: 20px;">
                    <div class="jumbotron text-center" style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url(Image/bg1h.png);">
                        <h1 style="color: white; font-weight: 400; font-size: 30px;">CHÀO MỪNG ĐẾN VỚI DIỄN ĐÀN</h1>
                        <h1 class="content">NÔNG SẢN VIỆT NAM</h1>
                    </div>
                </div>
                <div class="center-post" style="margin-top: -15px;">
                    <h2 style="border-bottom: 1px solid black;">Đại sảnh</h2>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Thông báo</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Góp ý</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Nguyen Tien Dung</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Thảo luận</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Nguyen Anh Huy</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post"
                             style="display: flex; justify-content: flex-start; border: none;">
                            <a class="title-post" href="#" style="align-self: center;">Tin tức</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Le  Nguyen Duy Nghia</h6>
                        </div>
                    </div>
                </div>
                <div class="center-post" style="margin-top: 10px;">
                    <h2 style="border-bottom: 1px solid black;">Đại sảnh</h2>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Thông báo</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Góp ý</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Nguyen Tien Dung</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="title-post" href="#" style="align-self: center;">Thảo luận</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Nguyen Anh Huy</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post"
                             style="display: flex; justify-content: flex-start;border: none;">
                            <a class="title-post" href="#" style="align-self: center;">Tin tức</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Le Nguyen Duy Nghia</h6>
                        </div>
                    </div>
                </div>
                <div class="center-post" style="margin-top: 20px;">
                    <h2 style="border-bottom: 1px solid black;">Đại sảnh</h2>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="" href="#" style="align-self: center;">Thông báo</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="" href="#" style="align-self: center;">Góp ý</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post" style="display: flex; justify-content: flex-start;">
                            <a class="" href="#" style="align-self: center;">Thảo luận</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                    <div>
                        <div class="element-center-post"
                             style="display: flex; justify-content: flex-start;border: none;">
                            <a class="" href="#" style="align-self: center;">Tin tức</a>
                            <div class="e1">
                                <h6>Lượt xem</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <div class="e2">
                                <h6>Lượt bình luận</h6>
                                <h5 style="text-align: center;">1.5K</h5>
                            </div>
                            <h6 style="margin-left: 20px; margin-top: 15px;">Author: Bui Duc Hieu</h6>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-12 right-side" style="margin-top: 20px;">
                <div class="">
                    <div id="img" class="carousel slide" data-ride="carousel">
                        <ul class="carousel-indicators">
                            <li data-target="#img" data-slide-to="0" class="active"></li>
                            <li data-target="#img" data-slide-to="1"></li>
                            <li data-target="#img" data-slide-to="2"></li>
                            <li data-target="#img" data-slide-to="3"></li>
                        </ul>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="img-caro" src="Image/bg2h.png" alt="bg1" max-width="300" height="240">
                            </div>
                            <div class="carousel-item">
                                <img class="img-caro" src="Image/bg2h.png" alt="bg2" max-width="300" height="240">
                            </div>
                            <div class="carousel-item">
                                <img class="img-caro" src="Image/bg2h.png" alt="bg3" max-width="300" height="240">
                            </div>
                            <div class="carousel-item">
                                <img class="img-caro" src="Image/bg2h.png" alt="bg4" max-width="300" height="240">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#img" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#img" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
                <div style="margin-top: 15px;">
                    <div style="background-color: #e8e8e8;border-radius: 10px;">
                        <a href="#" style="text-decoration: none;">
                            <h1>Bài viết mới nhất</h1>
                        </a>
                        <div class="media s-bar">
                            <a class="" href="#" style="text-decoration: none;">
                                <img src="Image/avah.png" alt="user1"
                                     class="mr-3 mt-3 rounded-circle" style="width: 25px;">
                            </a>
                            <div class="media-body">
                                <a href="#" style="text-decoration: none;">
                                    <h5>Cách để có vườn rau sạch tại nhà</h5>
                                </a>
                                <h6 class="" style="">Latest: Bui Duc Hieu . 20 minutes ago</h6>
                                <a href="#" class="text-muted" style="text-decoration: none;">#Góc chia sẻ</a>
                            </div>
                        </div>
                        <div class="media s-bar">
                            <a href="#">
                                <img src="Image/avah.png" alt="user2"
                                     class="mr-3 mt-3 rounded-circle" style="width: 25px;">
                            </a>
                            <div class="media-body">
                                <a href="#" style="text-decoration: none;">
                                    <h5>Trồng cây theo mùa</h5>
                                </a>
                                <h6>Latest: Bui Duc Hieu . 30 minutes ago</h6>
                                <a href="#" class="text-muted" style="text-decoration: none;">#Góc chia sẻ</a>
                            </div>
                        </div>
                        <div class="media s-bar">
                            <a href="#">
                                <img src="Image/avah.png" alt="user2"
                                     class="mr-3 mt-3 rounded-circle" style="width: 25px;">
                            </a>
                            <div class="media-body">
                                <a href="#" style="text-decoration: none;">
                                    <h5>Trồng cây theo mùa</h5>
                                </a>
                                <h6>Latest: Bui Duc Hieu . 30 minutes ago</h6>
                                <a href="#" class="text-muted" style="text-decoration: none;">#Góc chia sẻ</a>
                            </div>
                        </div>
                        <div class="media s-bar">
                            <a href="#">
                                <img src="Image/avah.png" alt="user2"
                                     class="mr-3 mt-3 rounded-circle" style="width: 25px;">
                            </a>
                            <div class="media-body">
                                <a href="#" style="text-decoration: none;">
                                    <h5>Trồng cây theo mùa</h5>
                                </a>
                                <h6>Latest: Bui Duc Hieu . 30 minutes ago</h6>
                                <a href="#" class="text-muted" style="text-decoration: none;">#Góc chia sẻ</a>
                            </div>
                        </div>
                        <div class="media s-bar">
                            <a href="#">
                                <img src="Image/avah.png" alt="user2"
                                     class="mr-3 mt-3 rounded-circle" style="width: 25px;">
                            </a>
                            <div class="media-body">
                                <a href="#" style="text-decoration: none;">
                                    <h5>Trồng cây theo mùa</h5>
                                </a>
                                <h6>Latest: Bui Duc Hieu . 30 minutes ago</h6>
                                <a href="#" class="text-muted" style="text-decoration: none;">#Góc chia sẻ</a>
                            </div>
                        </div>
                    </div>
                    <div>
                        <div class="s-bar" style="">
                            <h1 class="text-primary">Hoa quả</h1>
                            <ul class="nav nav-pills justify-content-start">
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Táo</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Vải</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Chôm Chôm</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Đào</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Xoài</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Nhãn</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Bơ</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Cam</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Chuối</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Nho</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Bưởi</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Thanh Trà</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Ổi</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Mận</a></li>
                                <li class="nav-item"><a class="nav-link text-muted" href="#">Chanh</a></li>
                            </ul>
                        </div>
                        <div class="s-bar">
                            <h1 class="text-primary">Rau-Củ</h1>
                            <ul class="nav nav-pills justify-content-start">
                                <li class="nav-item"><a href="#" class="nav-link">Cà chua</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Củ cải</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Củ năng</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Khoai lang</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Khoai môn</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Khoai tây</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Cà rốt</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Củ sắn</a></li>
                                <li class="nav-item"><a href="#" class="nav-link">Gừng</a></li>
                            </ul>
                        </div>
                        <div class="s-bar">
                            <h1 class="text-primary">Sức Khoẻ và Đời Sống</h1>
                            <ul class="nav nav-pills justify-content-start">
                                <li class="nav-item"><a href="post.html" class="nav-link">Salad giảm cân</a></li>
                                <li class="nav-item"><a href="#" class="nav-link"></a></li>
                                <li class="nav-item"><a href="#" class="nav-link"></a></li>
                            </ul>
                        </div>
                        <div class="s-bar">
                            <h1 class="text-primary">Góc chia sẻ</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<jsp:include page="elementpage/footer.jsp"/>

<!-- <script>
    function openBtn() {
        document.getElementById("myNav").style.left = "0";
    }
    function closeNav() {
        document.getElementById("myNav").style.left = "-100%";
    }
    function openSearch() {
        document.getElementById("mySearch").style.left = "0";
    }
    function closeSearch() {
        document.getElementById("mySearch").style.left = "-100%";
    }
</script> -->
<script src="javascript.js"></script>
</body>

</html>