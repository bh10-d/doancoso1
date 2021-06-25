<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:06 SA
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
    <link rel="stylesheet" href="css/style-contact.css">
    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
    <title>Liên hệ</title>

</head>

<body>
<jsp:include page="elementpage/header.jsp"/>
<!-- navigation -->
<jsp:include page="elementpage/navbar.jsp"/>

<div id="menu" class="container">
    <div style="margin-bottom: 20px;">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div class="text-center" style="margin-bottom: 20px;">
                    <h2>ĐỊA CHỈ LIÊN HỆ</h2>
                    <hr>
                    <h6>Địa chỉ: 193 Nguyễn Lương
                        Bằng,Quận Liên Chiểu, thành phố Đà Nẵng</h6>
                    <h6>Đường dây nóng: 0868 017117</h6>
                    <h6>Điện thoại: 0904 245355</h6>
                    <h6>Email: anhemtaocanhet@gmal.com</h6>
                </div>
                <div class="text-center">
                    <h2>KẾT NỐI VỚI CHÚNG TÔI</h2>
                    <hr>
                    <div class="link-social" style="">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-12">
                <div>
                    <iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15335.031912857427!2d108.145584236505!3d16.078044117993837!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x314218d2464141c1%3A0xde928f7063217c3f!2zMTkzIE5ndXnhu4VuIEzGsMahbmcgQuG6sW5nLCBIb8OgIEtow6FuaCBC4bqvYywgTGnDqm4gQ2hp4buDdSwgxJDDoCBO4bq1bmcgNTUwMDAwLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1621000528935!5m2!1svi!2s"
                            allowfullscreen="" loading="lazy" class="maps"></iframe>
                </div>
            </div>
        </div>
    </div>
    <div class="text-center">
        <h1 class="" style="color: #4E4E50;">BẠN CẦN TRỢ GIÚP?</h1>
    </div>
    <div>
        <form action="#" class="needs-validation" novalidate>


            <div class="form-group">
                <div class="form-label-group">
                    <input class="form-control" type="text" name="yourname" id="yourname" placeholder="Tên của bạn" required>
                    <label for="yourname">Tên của bạn</label>
                    <div class="valid-feedback">Có hiệu lực</div>
                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <input class="form-control" type="text" name="yourmail" id="yourmail" placeholder="Địa chỉ Email" required>
                    <label for="yourmail">Địa chỉ Email</label>
                    <div class="valid-feedback">Có hiệu lực</div>
                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <input class="form-control" type="text" name="yourtitle" id="yourtitle" placeholder="Tiêu đề" required>
                    <label for="yourtitle">Tiêu đề</label>
                    <div class="valid-feedback">Có hiệu lực</div>
                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-label-group">
                    <!-- <input class="form-control" type="text" name="yourtitle" id="yourtitle"
                    placeholder="Ý kiến phản hồi" required> -->
                    <label style="margin-top: -10px;font-size: 15px;">Ý kiến phản hồi</label>
                    <textarea class="form-control" rows="10" cols="70" id="yourfeedback" name="yourfeedback" style="padding-top: 20px;" required></textarea>
                    <div class="valid-feedback">Có hiệu lực</div>
                    <div class="invalid-feedback">Vui lòng điền vào trường này</div>
                </div>
            </div>
            <div class="hu text-right"><button type="submit">Gửi Thông Tin</button></div>
        </form>
    </div>
    <ul style="list-style: circle">
        <li>Quý khách nhận hàng mới thanh toán tiền;</li>
        <li>Giao hàng trực tiếp với Khách hàng tại Đà Nẵng;</li>
        <li>
            Khách hàng ở tỉnh khác chúng tôi sẽ chuyển phát nhanh theo đường bưu
            điện;
        </li>
        <li>
            Miễn phí toàn bộ cước vận chuyển đối với khách hàng mua lẻ trên toàn
            quốc.
        </li>
    </ul>
    <h2 class="text-center">***Trân trọng cảm ơn sự quan tâm của quý khách hàng***</h2>
    <div class="container">
        <h3 class="text-center">HỖ TRỢ TRỰC TUYẾN</h3>
        <div class="row text-center ">
            <div class="col-xl-4 col-md-4 col-sm-12 human">
                <img src="Image/icon2.png" />
                <p>Tư vấn 1</p>
                <a href="https://www.facebook.com/dhieu2501"><img class="img-human"
                                                                  src="https://scontent.fsgn2-6.fna.fbcdn.net/v/t1.6435-9/126159560_2718113195067163_701083132291228084_n.jpg?_nc_cat=111&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=nk5wRGeGRl4AX8Soslc&_nc_ht=scontent.fsgn2-6.fna&oh=07f76691f549dd5697b3f6a6323a546e&oe=60C08F9F"
                                                                  width="110px" height="150px" /></a>
                <p>Điện Thoại : 0982410285</p>
            </div>
            <div class="col-xl-4 col-md-4 col-sm-12 human">
                <img src="Image/icon2.png" />
                <p>Tư vấn 2</p>
                <a href="https://www.facebook.com/profile.php?id=100012308586357"><img class="img-human"
                                                                                       src="https://scontent.fsgn2-5.fna.fbcdn.net/v/t1.6435-9/104815205_720268195465336_7518181037342480008_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=8bfeb9&_nc_ohc=6ebnBDeP1h4AX9LpZfu&_nc_ht=scontent.fsgn2-5.fna&oh=eae9192dece71b4fe8725d50a0568141&oe=60C1D1C0"
                                                                                       width="110px" height="150px"></a>
                <p>Điện Thoại : 01245575485</p>
            </div>
            <div class="col-xl-4 col-md-4 col-sm-12 human">
                <img src="Image/icon2.png" />
                <p>Tư vấn 3</p>
                <a href="https://www.facebook.com/profile.php?id=100010144067469"><img class="img-human"
                                                                                       src="https://scontent.fhan4-1.fna.fbcdn.net/v/t1.6435-9/126108691_1285564845124972_4805956750734145150_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=e3f864&_nc_ohc=9qZEXycg8Z8AX-Tn2bA&_nc_ht=scontent.fhan4-1.fna&oh=a89f114912e4f19a33697b0bab1517e2&oe=60C3FA55"
                                                                                       width="110px" height="150px"></a>
                <p>Điện Thoại : 01245575485</p>
            </div>
        </div>
        <div class="text-center">
            <marquee class="text-marquee">Hàng Việt Nam Chất Lượng Cao</marquee>
            <div class="ketthuc">
                <a href="index.html" class="" style="text-decoration: none;">Trái cây sạch sẽ không chất độc hại</a>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<jsp:include page="elementpage/footer.jsp"/>
<script src="javascript.js"></script>
</body>

</html>
