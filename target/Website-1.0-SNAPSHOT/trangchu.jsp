<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 29/05/2021
  Time: 9:07 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- add link bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <!-- add carousel glider -->
    <script src="js/glide.min.js"></script>
    <link rel="stylesheet" href="css/glide.core.min.css">
    <link rel="stylesheet" href="css/glide.theme.min.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css"
          integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

    <!-- link bootrap hieu -->
    <link rel="stylesheet" href="css/style-login-signup.css">
    <script src="js/vadi-login-signup.js"></script>
    <link rel="stylesheet" href="css/style-raucu.css" >
    <title>Trang Chu</title>
    <link rel="shortcut icon" type="image/png" href="Image/logonongsanvnv2.png"/>
</head>

<body>
<!-- phan dau cua trang web -->

<jsp:include page="elementpage/header.jsp"/>
<jsp:include page="elementpage/navbar.jsp"/>

<!--background header-->


<div class="background" style="background-image: url(Image/background_last.jpg);">
    <!-- <img src="Image/background_last.jpg" alt=""> -->
    <h1>Chào mừng các bạn đã đến với Nông Sản VN</h1>
    <a href="RauCu.html" id="custom-a" class="btn btn-success">Mua Ngay</a>
</div>

<!-- slide mặt hàng -->
<section class="section2">

    <div class="mySlideProduct glide">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/traicay.jpg" alt="">
                            <p class="nameProduct">trái cây</p>
                        </div>
                    </a>

                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/do_kho.jpg" alt="">
                            <p class="nameProduct">đậu</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/do_uong.jpg" alt="">
                            <p class="nameProduct">đồ uống</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/haisan.png" alt="">
                            <p class="nameProduct">hải sản</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/rau_cu.jpg" alt="">
                            <p class="nameProduct">rau củ</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="box">
                            <img src="Image/thit_trung.jpg" alt="">
                            <p class="nameProduct">lương thực</p>
                        </div>
                    </a>
                </li>
            </ul>
        </div>

        <div class="glide__arrows" data-glide-el="controls">
            <button class="normal glide__arrow glide__arrow--left" data-glide-dir="<">
                &lt;
            </button>

            <button class="normal glide__arrow glide__arrow--right" data-glide-dir=">">
                &gt;
            </button>
        </div>

    </div>
</section>
<!-- quang cao -->
<section class="ahuhuhu">
    <div class="div2">

        <div class="imageElement">
            <a href="RauCu.html">
                <img src="Image/linkRausach.png" alt="">
            </a>

        </div>

        <div class="imageElement">
            <a href="RauCu.html">
                <img src="Image/linkTraiCaytuoi.png" alt="">
            </a>

        </div>

    </div>

</section>

<!-- slide sản phẩm bán chạy -->
<section class="div3">
    <h2>Sản phẩm bán chạy</h2>
    <div class="item-slide glide">
        <div class="glide__track" data-glide-el="track">
            <ul class="glide__slides">
                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/bapcai.jpg" alt="">
                            <p class="nameProduct">bắp cải</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/otchuong.jpg" alt="">
                            <p class="nameProduct">ớt chuông</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/dautaydalat.jpg" alt="">
                            <p class="nameProduct">dâu Đà Lạt</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/chuoi.jpg" alt="">
                            <p class="nameProduct">chuối</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/chanh_ko_hat.jpg" alt="">
                            <p class="nameProduct">chanh tươi</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/nho_mi.jpg" alt="">
                            <p class="nameProduct">nho Mĩ</p>
                        </div>
                    </a>
                </li>


                <li class="glide__slide">
                    <a href="RauCu.html">
                        <div class="product">
                            <img src="Image/bapmi.jpg" alt="">
                            <p class="nameProduct">bắp Mĩ</p>
                        </div>
                    </a>
                </li>
            </ul>

        </div>

        <div class="glide__arrows" data-glide-el="controls">
            <button class="normal glide__arrow glide__arrow--left" data-glide-dir="<">
                &lt;
            </button>

            <button class="normal glide__arrow glide__arrow--right" data-glide-dir=">">
                &gt;
            </button>
        </div>

    </div>

</section>


<!-- html cua tin tuc -->
<article class="section3">
    <div class="div4">
        <h2>Tin tức</h2>

        <div class="all-article">

            <a href="blog.html">
                <div class="article-element">
                    <img src="Image/nam_van_chi.png" alt="">
                    <h5>Nấm vân chi có tác dụng gì?</h5>
                    <p>Cách đây hơn 2000 năm, nấm vân chi rừng đã được biết đến và sử...</p>
                </div>
            </a>

            <a href="blog.html">
                <div class="article-element">
                    <img src="Image/cha_ca.png" alt="">
                    <h5>Chả cá ăn với gì thì ngon?</h5>
                    <p>Chiên ăn,làm bánh giò với bột gạo tẻ,nhân chả cá...</p>
                </div>
            </a>

            <a href="blog.html">
                <div class="article-element">
                    <img src="Image/com_tuoi.png" alt="">
                    <h5>Cốm tươi ăn với gì thì ngon?</h5>
                    <p>Cốm tươi làm món gì ngon, Cốm tươi làm món gì, cốm tươi có...</p>
                </div>
            </a>

        </div>
    </div>
</article>

<!-- html footer  -->

<jsp:include page="elementpage/footer.jsp"/>

<script src="js/javascript.js"></script>
<script>
    new Glide(".mySlideProduct", {
        type: 'carousel',
        perView: 4,
        focusAt: 'center',
        gap: 5
    }).mount();


</script>

<script>
    new Glide(".item-slide", {
        type: 'carousel',
        perView: 4,
        focusAt: 'center',
        gap: 5
    }).mount();


</script>

</body>

</html>





