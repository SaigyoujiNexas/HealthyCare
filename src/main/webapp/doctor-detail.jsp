<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Medicoz | Health and Medical HTML Template | Doctor Detail</title><!-- Stylesheets -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="icon" href="images/favicon.png" type="image/x-icon"><!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
    <!--[if lt IE 9]>
    <script src="js/respond.js"></script><![endif]-->
</head>

<body>
    <div class="page-wrapper">
        <!-- Preloader -->
        <div class="preloader"></div><!-- Main Header-->
        <header class="main-header header-style-two">
            <!-- Header top -->
            <div class="header-top-two">
                <div class="auto-container">
                    <div class="inner-container">
                        <div class="top-left">
                            <ul class="contact-list clearfix">
                                <li><i class="flaticon-hospital-1"></i>西安邮电大学<br>中国西安</li>
                                <li><i class="flaticon-back-in-time"></i>周一 - 周六 8.00 - 18.00.<br>周末关门</li>
                            </ul>
                        </div>
                        <div class="top-right">
                            <ul class="social-icon-one">
                                <li><a href="#"><span class="fab fa-weixin"></span></a></li>
                                <li><a href="#"><span class="fab fa-qq"></span></a></li>
                                <li><a href="#"><span class="fab fa-weibo"></span></a></li>
                            </ul>
                            <div class="btn-box"><a class="theme-btn btn-style-three" href="appointment.jsp"
                                                    id="appointment-btn"><span
                                    class="btn-title">联系我们</span></a></div>
                        </div>
                    </div>
                </div>
            </div><!-- End Header Top -->
            <!-- Header Lower -->
            <div class="header-lower">
                <div class="auto-container">
                    <!-- Main box -->
                    <div class="main-box">
                        <div class="logo-box">
                            <div class="logo"><a href="index.jsp"><img src="images/logo-9.png" alt="" title=""></a>
                            </div>
                        </div>
                        <!--Nav Box-->
                        <div class="nav-outer">
                            <nav class="nav main-menu">
                                <ul class="navigation" id="navbar">
                                    <li><a href="index.jsp">主页</a>
                                        <!--                                    <ul>-->
                                        <!--                                        <li><a href="index.html">主页 医疗</a></li>-->
                                        <!--                                        <li><a href="index-2.html">主页 门诊</a></li>-->
                                        <!--                                        <li><a href="index-3.html">主页 牙科护理</a></li>-->
                                        <!--                                        <li><a href="index-4.html">主页 眼部护理</a></li>-->
                                        <!--                                        <li><a href="index-5.html">主页 产前护理</a></li>-->
                                        <!--                                    </ul>-->
                                    </li>
                                    <li class="dropdown"><span>页面</span>
                                        <ul>
                                            <li><a href="about-us.jsp">关于我们</a></li>
                                            <li><a href="services.jsp">服务</a></li>
                                            <li><a href="gallery.jsp">图片</a></li>
                                            <li><a href="pricing-table.jsp">价格表</a></li>
                                            <li><a href="elements.jsp">更多内容</a></li>
                                            <li><a href="coming-soon.jsp">Coming Soon</a></li>
                                            <li><a href="error-page.jsp">404页面</a></li>
                                            <li><a href="terms-and-condition.jsp">我们的团队</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><span>医生</span>
                                        <ul>
                                            <li><a href="doctors.jsp">医生简介</a></li>
                                            <li><a href="doctor-detail.jsp">医生图片</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><span>部门</span>
                                        <ul>
                                            <li><a href="departments.jsp">部门总览</a></li>
                                            <li><a href="department-detail.jsp">心脏病学</a></li>
                                            <li><a href="department-detail.jsp">神经学</a></li>
                                            <li><a href="department-detail.jsp">泌尿科学</a></li>
                                            <li><a href="department-detail.jsp">妇科</a></li>
                                            <li><a href="department-detail.jsp">儿科</a></li>
                                            <li><a href="department-detail.jsp">实验室</a></li>
                                            <li><a href="department-detail.jsp">部门介绍</a></li>
                                        </ul>
                                    </li>
                                    <li class="current"><a href="blog.html">博客</a>
                                        <!--                                    <ul>-->
                                        <!--                                        <li><a href="blog-checkboard.jsp">棋盘布局</a></li>-->
                                        <!--                                        <li><a href="blog-masonry.jsp">砌筑布局</a></li>-->
                                        <!--                                        <li><a href="blog-two-col.jsp">两列布局</a></li>-->
                                        <!--                                        <li><a href="blog-three-col.jsp">三列布局</a></li>-->
                                        <!--                                        <li><a href="blog-four-col-wide.jsp">四列布局</a></li>-->
                                        <!--                                        <li class="dropdown"><span>帖子类型</span>-->
                                        <!--                                            <ul>-->
                                        <!--                                                <li><a href="blog.html">图形发送</a></li>-->
                                        <!--                                                <li><a href="blog-post-gallery.html">图库贴子</a></li>-->
                                        <!--                                                <li><a href="blog-post-link.html">链接贴子</a></li>-->
                                        <!--                                                <li><a href="blog-post-audio.html">音频贴子</a></li>-->
                                        <!--                                                <li><a href="blog-post-quote.html">报价贴子</a></li>-->
                                        <!--                                                <li><a href="blog-post-video.html">视频贴子</a></li>-->
                                        <!--                                            </ul>-->
                                        <!--                                        </li>-->
                                        <!--                                    </ul>-->
                                    </li>
                                    <li class="dropdown"><span>商店</span>
                                        <ul>
                                            <li><a href="shop.jsp">商店</a></li>
                                            <li><a href="shop-single.jsp">单个商品</a></li>
                                            <li><a href="shopping-cart.jsp">购物车</a></li>
                                            <li><a href="checkout.jsp">结算</a></li>
                                            <li><a href="login.html">登录</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.jsp">联系我们</a></li>
                                </ul>
                            </nav><!-- Main Menu End-->
                            <div class="outer-box">
                                <!-- Cart Btn --><button class="cart-btn"><i
                                        class="icon flaticon-shopping-cart"></i><span
                                        class="count">3</span></button><button class="search-btn"><span
                                        class="fa fa-search"></span></button></div>
                        </div>
                    </div>
                </div>
            </div><!-- Sticky Header -->
            <div class="sticky-header">
                <div class="auto-container">
                    <div class="main-box">
                        <div class="logo-box">
                            <div class="logo"><a href="index.jsp"><img src="images/logo.png" alt="" title=""></a></div>
                        </div>
                        <!--Keep This Empty / Menu will come through Javascript-->
                    </div>
                </div>
            </div><!-- End Sticky Menu -->
            <!-- Mobile Header -->
            <div class="mobile-header">
                <div class="logo"><a href="index.jsp"><img src="images/logo.png" alt="" title=""></a></div>
                <!--Nav Box-->
                <div class="nav-outer clearfix">
                    <div class="outer-box">
                        <!-- Search Btn -->
                        <div class="search-box"><button class="search-btn mobile-search-btn"><i
                                    class="flaticon-magnifying-glass"></i></button></div><!-- Cart Btn --><button
                            class="cart-btn"><i class="icon flaticon-shopping-cart"></i><span
                                class="count">3</span></button><a href="#nav-mobile"
                            class="mobile-nav-toggler navbar-trigger"><span class="fa fa-bars"></span></a>
                    </div>
                </div>
            </div><!-- Mobile Nav -->
            <div id="nav-mobile"></div><!-- Header Search -->
            <div class="search-popup"><span class="search-back-drop"></span><button class="close-search"><span
                        class="fa fa-times"></span></button>
                <div class="search-inner">
                    <form method="post" action="blog-showcase.html">
                        <div class="form-group"><input type="search" name="search-field" value=""
                                placeholder="Search..." required=""><button type="submit"><i
                                    class="flaticon-magnifying-glass"></i></button></div>
                    </form>
                </div>
            </div><!-- End Header Search -->
            <!-- Sidebar Cart -->
            <div class="sidebar-cart"><span class="cart-back-drop"></span>
                <div class="shopping-cart">
                    <div class="cart-header">
                        <div class="title">Shopping Cart <span>(3)</span></div><button class="close-cart"><span
                                class="flaticon-add"></span></button>
                    </div>
                    <ul class="shopping-cart-items">
                        <li class="cart-item"><img src="images/resource/products/product-thumb-1.jpg" alt="#"
                                                   class="thumb" /><span class="item-name">First Aid Kit</span><span
                                class="item-quantity">1 x <span class="item-amount">$50.00</span></span><a
                                href="shop-single.jsp" class="product-detail"></a><button
                                class="remove">Remove</button></li>
                        <li class="cart-item"><img src="images/resource/products/product-thumb-2.jpg" alt="#"
                                                   class="thumb" /><span class="item-name">Vitamin Tablet</span><span
                                class="item-quantity">1 x <span class="item-amount">$25.00</span></span><a
                                href="shop-single.jsp" class="product-detail"></a><button
                                class="remove">Remove</button></li>
                        <li class="cart-item"><img src="images/resource/products/product-thumb-3.jpg" alt="#"
                                                   class="thumb" /><span class="item-name">Zinc Tablet</span><span class="item-quantity">1
                                x <span class="item-amount">$15.00</span></span><a href="shop-single.jsp"
                                class="product-detail"></a><button class="remove">Remove</button></li>
                    </ul>
                    <div class="cart-footer">
                        <div class="shopping-cart-total"><strong>Subtotal:</strong>$90.00</div><a
                            href="shopping-cart.jsp" class="theme-btn btn-style-three"><span class="btn-title">View
                                Cart</span></a><a href="checkout.jsp" class="theme-btn btn-style-one"><span
                                class="btn-title">Checkout</span></a>
                    </div>
                </div><!-- End shopping-cart -->
            </div><!-- End Sidebar Cart -->
        </header>
        <!--End Main Header -->
        <!--Page Title-->
        <section class="page-title" style="background-image: url(images/background/8.jpg);">
            <div class="auto-container">
                <div class="title-outer">
                    <h1>Dedicated Doctor</h1>
                    <ul class="page-breadcrumb">
                        <li><a href="index.jsp">Home</a></li>
                        <li>Doctors</li>
                    </ul>
                </div>
            </div>
        </section>
        <!--End Page Title-->
        <!-- Doctor Detail Section -->
        <section class="doctor-detail-section">
            <div class="auto-container">
                <div class="row">
                    <!-- Content Side -->
                    <div class="content-side col-lg-8 col-md-12 col-sm-12 order-2">
                        <div class="docter-detail">
                            <h3 class="name">Dr. Morila Wood</h3><span class="designation">MBBS(Sydney),FRACS(Paediatric
                                Surgery)</span>
                            <div class="text">After graduating from West Virginia University Medical School,Dr. Emily
                                Haden completed a two-year fellowship in sports medicine at Akron Children’s Hospital.
                                During his training at Akron,Dr. Emily Haden Alex was team physician for the University
                                of Akron and Walsh University.</div>
                            <ul class="doctor-info-list">
                                <li><strong>Speciality</strong>
                                    <p>Endocrinology <br>Paediatric Medicine <br>Urology</p>
                                </li>
                                <li><strong>Education</strong>
                                    <p>Doctor of Medicine,University of Texas,USA(1990) Medical Orientation Program,St.
                                        Louis University(St. Louis,Missouri 1996)</p>
                                </li>
                                <li><strong>Experience</strong>
                                    <p>25 years of Experience in Medicine <br>Vice President and Chief Medical
                                        Officer,Kessler Institute for Rehabilitation <br>Medical Corporation
                                        Professor,Institute Of Coast Private Hospital Campus</p>
                                </li>
                                <li><strong>Address</strong>
                                    <p>Suite 27,Medical Centre,The Sunshine Coast Private Hospital,QLD 4556</p>
                                </li>
                                <li><strong>Timing</strong>
                                    <p>Monday - Friday 08:00 - 20:00 <br>Saturday&nbsp;09:00 - 18:00 <br>Sunday
                                        &nbsp;&nbsp;09:00 - 18:00</p>
                                </li>
                                <li><strong>Phone</strong>
                                    <p><a href="#">+1-23-345-6789</a></p>
                                </li>
                                <li><strong>Email</strong>
                                    <p><a href="#">myemail@yourdomain.com</a></p>
                                </li>
                                <li><strong>Website</strong>
                                    <p><a href="#">www.yourdomain.com</a></p>
                                </li>
                            </ul>
                        </div>
                        <div class="appointment-form default-form">
                            <div class="sec-title"><span class="sub-title">Online Appoinment</span>
                                <h2>Make An Appointment</h2><span class="divider"></span>
                            </div>
                            <!--Comment Form-->
                            <form action="#" method="post" id="email-form">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-12"><input type="text" name="username"
                                            placeholder="Your Name"></div>
                                    <div class="form-group col-lg-6 col-md-12"><input type="text" name="phone"
                                            placeholder="Your Phone"></div>
                                    <div class="form-group col-lg-12 col-md-12"><input type="email" name="email"
                                            placeholder="Your Email *"></div>
                                    <div class="form-group col-lg-12 col-md-12"><textarea name="contact_message"
                                            placeholder="Tell us about Pasent"></textarea></div>
                                    <div class="form-group col-lg-12 col-md-12"><button class="theme-btn btn-style-one"
                                            type="button" name="submit-form"><span class="btn-title">Submit
                                                Query</span></button></div>
                                </div>
                            </form>
                        </div>
                    </div><!-- Sidebar Side -->
                    <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                        <div class="sidebar">
                            <!-- Team Block -->
                            <div class="team-block wow fadeInUp">
                                <div class="inner-box">
                                    <figure class="image"><img src="images/resource/team-1.jpg" alt=""></figure>
                                    <ul class="social-links">
                                        <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                        <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                        <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                        <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                                    </ul>
                                </div>
                            </div><!-- Doctor Availability -->
                            <div class="docter-availability">
                                <div class="inner">
                                    <div class="sec-title"><span class="sub-title">Timining</span>
                                        <h2>Availability</h2><span class="divider"></span>
                                        <div class="text">Suspendisse potenti. Maecenas dapibus ac tellus sed pulvinar.
                                            Vestibulum bib volutpat accumsan non laoreet nulla luctus.</div>
                                    </div>
                                    <ul class="timing-list-two">
                                        <li>Monday - Friday <span>08:00 - 20:00</span></li>
                                        <li>Saturday <span>09:00 - 18:00</span></li>
                                        <li>Sunday <span>09:00 - 18:00</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- End Doctor Detail Section -->
        <!-- Team Section -->
        <section class="team-section">
            <div class="auto-container">
                <div class="row">
                    <!-- Team Block -->
                    <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <figure class="image"><img src="images/resource/team-1.jpg" alt=""></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                            <div class="info-box">
                                <h4 class="name"><a href="doctor-detail.jsp">Dr. Morila Wood</a></h4><span
                                    class="designation">Senior Dr. at Delmont</span>
                            </div>
                        </div>
                    </div><!-- Team Block -->
                    <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <figure class="image"><img src="images/resource/team-2.jpg" alt=""></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                            <div class="info-box">
                                <h4 class="name"><a href="doctor-detail.jsp">Dr. Morila Wood</a></h4><span
                                    class="designation">Senior Dr. at Delmont</span>
                            </div>
                        </div>
                    </div><!-- Team Block -->
                    <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <figure class="image"><img src="images/resource/team-3.jpg" alt=""></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                            <div class="info-box">
                                <h4 class="name"><a href="doctor-detail.jsp">Dr. Morila Wood</a></h4><span
                                    class="designation">Senior Dr. at Delmont</span>
                            </div>
                        </div>
                    </div><!-- Team Block -->
                    <div class="team-block col-lg-3 col-md-6 col-sm-12 wow fadeInUp">
                        <div class="inner-box">
                            <figure class="image"><img src="images/resource/team-4.jpg" alt=""></figure>
                            <ul class="social-links">
                                <li><a href="#"><span class="fab fa-facebook"></span></a></li>
                                <li><a href="#"><span class="fab fa-google-plus-g"></span></a></li>
                                <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                <li><a href="#"><span class="fab fa-pinterest"></span></a></li>
                            </ul>
                            <div class="info-box">
                                <h4 class="name"><a href="doctor-detail.jsp">Dr. Morila Wood</a></h4><span
                                    class="designation">Senior Dr. at Delmont</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section><!-- End Team Section -->
        <!-- Clients Section -->
        <section class="clients-section alternate">
            <div class="auto-container">
                <!-- Sponsors Outer -->
                <div class="sponsors-outer">
                    <!--clients carousel-->
                    <ul class="clients-carousel owl-carousel owl-theme">
                        <li class="slide-item"><a href="#"><img src="images/clients/1.png" alt=""></a></li>
                        <li class="slide-item"><a href="#"><img src="images/clients/2.png" alt=""></a></li>
                        <li class="slide-item"><a href="#"><img src="images/clients/3.png" alt=""></a></li>
                        <li class="slide-item"><a href="#"><img src="images/clients/4.png" alt=""></a></li>
                        <li class="slide-item"><a href="#"><img src="images/clients/5.png" alt=""></a></li>
                    </ul>
                </div>
            </div>
        </section>
        <!--End Clients Section -->
        <!-- Main Footer -->
        <footer class="main-footer">
            <!--Widgets Section-->
            <div class="widgets-section" style="background-image: url(images/background/7.jpg);">
                <div class="auto-container">
                    <div class="row">
                        <!--Big Column-->
                        <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                            <div class="row">
                                <!--Footer Column-->
                                <div class="footer-column col-xl-7 col-lg-6 col-md-6 col-sm-12">
                                    <div class="footer-widget about-widget">
                                        <div class="logo">
                                            <a href="index.html"><img src="images/logo-2.png" alt="" /></a>
                                        </div>
                                        <div class="text">
                                            <p>

                                                我们的诊所已经发展成为为诊所提供世界级设施

                                                高级修复剂 .
                                            </p>
                                            <p>我们是澳大利亚最合格的植入物提供商之一，拥有超过30家

                                                多年的质量培训和经验.</p>
                                        </div>
                                        <ul class="social-icon-three">
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-google-plus-g"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-skype"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-linkedin-in"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!--Footer Column-->
                                <div class="footer-column col-xl-5 col-lg-6 col-md-6 col-sm-12">
                                    <div class="footer-widget">
                                        <h2 class="widget-title">部门</h2>
                                        <ul class="user-links">
                                            <li>
                                                <a href="#">外科与放射学</a>
                                            </li>
                                            <li>
                                                <a href="#">家庭医学</a>
                                            </li>
                                            <li>
                                                <a href="#">女性健康</a>
                                            </li>
                                            <li>
                                                <a href="#">配镜师</a>
                                            </li>
                                            <li>
                                                <a href="#">儿科学</a>
                                            </li>
                                            <li>
                                                <a href="#">皮肤病科</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Big Column-->
                        <div class="big-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                            <div class="row">
                                <!--Footer Column-->
                                <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                                    <!--Footer Column-->
                                    <div class="footer-widget recent-posts">
                                        <h2 class="widget-title">新闻</h2>
                                        <!--Footer Column-->
                                        <div class="widget-content">
                                            <div class="post">
                                                <div class="thumb">
                                                    <a href="blog-post-image.html"><img
                                                            src="images/resource/post-thumb-1.jpg" alt=""></a>
                                                </div>
                                                <h4>
                                                    <a href="blog-post-image.html">整合医学
                                                        <br>& 癌症治疗.</a>
                                                </h4>
                                                <span class="date">7月 11,2019</span>
                                            </div>
                                            <div class="post">
                                                <div class="thumb">
                                                    <a href="blog-post-image.html"><img
                                                            src="images/resource/post-thumb-2.jpg" alt=""></a>
                                                </div>
                                                <h4>
                                                    <a href="blog-post-image.html">获得更好的
                                                        <br>医护时间.</a>
                                                </h4>
                                                <span class="date">8月 1,2019</span>
                                            </div>
                                            <div class="post">
                                                <div class="thumb">
                                                    <a href="blog-post-image.html"><img
                                                            src="images/resource/post-thumb-3.jpg" alt=""></a>
                                                </div>
                                                <h4>
                                                    <a href="blog-post-image.html">最好的医护
                                                        <br></a>
                                                </h4>
                                                <span class="date">8月 1,2019</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--Footer Column-->
                                <div class="footer-column col-lg-6 col-md-6 col-sm-12">
                                    <!--Footer Column-->
                                    <div class="footer-widget contact-widget">
                                        <h2 class="widget-title">联系我们</h2>
                                        <!--Footer Column-->
                                        <div class="widget-content">
                                            <ul class="contact-list">
                                                <li>
                                                    <span class="icon flaticon-placeholder"></span>
                                                    <div class="text">圣地亚哥富尔顿街2130号
                                                        <br>CA 94117-1080 USA
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="icon flaticon-call-1"></span>
                                                    <div class="text">周一 至 周五:08:30 - 18:00</div>
                                                    <a href="tel:+89868679575">
                                                        <strong>+898 68679 575</strong>
                                                    </a>
                                                </li>
                                                <li>
                                                    <span class="icon flaticon-email"></span>
                                                    <div class="text">是否有更多疑惑？<br>
                                                        <a href="mailto:info@gmail.com">
                                                            <strong>info@gmail.com</strong>
                                                        </a>
                                                    </div>
                                                </li>
                                                <li>
                                                    <span class="icon flaticon-back-in-time"></span>
                                                    <div class="text">周一 - Sat 8.00 - 18.00<br>
                                                        <strong>周日关闭</strong>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Bottom-->
            <div class="footer-bottom">
                <!-- Scroll To Top -->
                <div class="scroll-to-top scroll-to-target" data-target="html">
                    <span class="fa fa-angle-up"></span>
                </div>
                <div class="auto-container">
                    <div class="inner-container clearfix">
                        <div class="footer-nav">
                            <ul class="clearfix">
                                <li>
                                    <a href="index.html">隐私政策 </a>
                                </li>
                                <li>
                                    <a href="about-us.html">联系</a>
                                </li>
                                <li>
                                    <a href="services.html">供应商</a>
                                </li>
                            </ul>
                        </div>
                        <div class="copyright-text">
                            <p>Copyright 漏 2019
                                <a href="http://www.bootstrapmb.com/">bootstrapmb</a>All Rights Reserved.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--End Main Footer -->
    </div><!-- End Page Wrapper -->
    <script src="js/jquery.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.fancybox.js"></script>
    <script src="js/jquery.modal.min.js"></script>
    <script src="js/mmenu.polyfills.js"></script>
    <script src="js/mmenu.js"></script>
    <script src="js/appear.js"></script>
    <script src="js/mixitup.js"></script>
    <script src="js/owl.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/script.js"></script>
</body>

</html>