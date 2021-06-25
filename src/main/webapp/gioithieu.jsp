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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style-gioithieu.css">
    <link rel="stylesheet" href="css/style-login-signup.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Gioi thieu</title>
</head>

<body>
<!--header-->
<jsp:include page="elementpage/header.jsp"/>
<!-- navigation -->
<jsp:include page="elementpage/navbar.jsp"/>
<!--end header-->
<!--body-->
<div class="">
    <div class="">
        <div class="text-center detail">
            <h2>CHÀO MỪNG BẠN ĐẾN VỚI NÔNG SẢN VIỆT NAM</h2>
            <p>NongSanVn ra đời với sứ mệnh mang đến cho bạn những giá trị sức khoẻ tốt nhất.</p>
            <p>Với đội ngũ dev tập sự năm 1 - Trang thiết bị và cơ sở vật chất không có gì nổi bật ngoài những cái
                máy tính quèn.</p>
            <p class="slogan">"NÔNG SẢN SẠCH CHO MỌI NGƯỜI"</p>
            <p>là điều mà chúng tôi muốn mang nó tới với các bạn.</p>
        </div>
        <div>
            <div id="demo" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1"></li>
                    <li data-target="#demo" data-slide-to="2"></li>
                    <li data-target="#demo" data-slide-to="3"></li>
                    <li data-target="#demo" data-slide-to="4"></li>
                    <li data-target="#demo" data-slide-to="5"></li>
                    <li data-target="#demo" data-slide-to="6"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img id="img-caro" class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                    <div class="carousel-item">
                        <img class="img-caro" src="Image/bg1h.png" alt="">
                    </div>
                </div>
                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#demo" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#demo" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>
        <div>
            <h2 class="text-center">BAN GIÁM ĐỐC</h2>
            <div class="container">
                <div class="row text-center ">
                    <div class="col-xl-4 col-md-4 col-sm-12 human">
                        <a href="https://www.facebook.com/dhieu2501"><img class="img-human"
                                                                          src="https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-9/126159560_2718113195067163_701083132291228084_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=nk5wRGeGRl4AX8Soslc&_nc_ht=scontent.fsgn2-6.fna&oh=07f76691f549dd5697b3f6a6323a546e&oe=60C08F9F"
                                                                          width="110px" height="150px" /></a>
                        <p>PHÓ GIÁM ĐỐC</p>
                        <p>Điện Thoại : 0982410285</p>
                    </div>
                    <div class="col-xl-4 col-md-4 col-sm-12 human">
                        <a href="https://www.facebook.com/profile.php?id=100012308586357"><img class="img-human"
                                                                                               src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/104815205_720268195465336_7518181037342480008_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=6ebnBDeP1h4AX9LpZfu&_nc_ht=scontent.fsgn2-5.fna&oh=eae9192dece71b4fe8725d50a0568141&oe=60C1D1C0"
                                                                                               width="110px" height="150px"></a>
                        <p>CHỦ TỊCH</p>
                        <p>Điện Thoại : 01245575485</p>
                    </div>
                    <div class="col-xl-4 col-md-4 col-sm-12 human">
                        <!-- <a href="https://www.facebook.com/nghia.duy.220302"><img class="img-human"
                        src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/148876608_1107135119753292_4203707636312095111_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=mR46IHaJzGEAX_1oLTV&_nc_ht=scontent.fsgn2-5.fna&oh=dd1e8bef1ed4a4f31b221b04459604c2&oe=60C18D43"
                        width="110px" height="150px"></a> -->
                        <a href="https://www.facebook.com/profile.php?id=100010144067469"><img class="img-human"
                                                                                               src="https://scontent.fhan4-1.fna.fbcdn.net/v/t1.6435-9/126108691_1285564845124972_4805956750734145150_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=e3f864&_nc_ohc=9qZEXycg8Z8AX-Tn2bA&_nc_ht=scontent.fhan4-1.fna&oh=a89f114912e4f19a33697b0bab1517e2&oe=60C3FA55"
                                                                                               width="110px" height="150px"></a>
                        <p>TỔNG TỔNG GIÁM ĐỐC</p>
                        <p>Điện Thoại : 01245575485</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center inf-voucher">
        <form action="">
            <h4>ĐĂNG KÝ LIỀN TAY</h4>
            <h1>NHẬN NGAY VOUCHER</h1>
            <input type="email" placeholder="Email của bạn" class="">
            <button class="button-dk">ĐĂNG KÝ</button>
        </form>
    </div>
</div>
<!--end body-->
<!--footer-->
<jsp:include page="elementpage/footer.jsp"/>
<script src="js/javascript.js"></script>
</body>

</html>
