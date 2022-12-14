<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Medicoz | Health and Medical HTML Template | Shop</title><!-- Stylesheets -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
    <link rel="icon" href="images/favicon.png" type="image/x-icon"><!-- Responsive -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
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
                        <div class="logo"><a href="index.html"><img src="images/logo-9.png" alt="" title=""></a>
                        </div>
                    </div>
                    <!--Nav Box-->
                    <div class="nav-outer">
                        <nav class="nav main-menu">
                            <ul class="navigation" id="navbar">
                                <li><a href="index.html">主页</a>
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
                                        <li><a href="departments.html">部门总览</a></li>
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
                                        <li><a href="shopping-cart.html">购物车</a></li>
                                        <li><a href="checkout.jsp">结算</a></li>
                                        <li><a href="login.html">登录</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.jsp">联系我们</a></li>
                            </ul>
                        </nav><!-- Main Menu End-->
                        <div class="outer-box">
                            <!-- Cart Btn -->
                            <button class="cart-btn"><i
                                    class="icon flaticon-shopping-cart"></i><span
                                    class="count">3</span></button>
                            <button class="search-btn"><span
                                    class="fa fa-search"></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Sticky Header -->
        <div class="sticky-header">
            <div class="auto-container">
                <div class="main-box">
                    <div class="logo-box">
                        <div class="logo"><a href="index.html"><img src="images/logo.png" alt="" title=""></a></div>
                    </div>
                    <!--Keep This Empty / Menu will come through Javascript-->
                </div>
            </div>
        </div><!-- End Sticky Menu -->
        <!-- Mobile Header -->
        <div class="mobile-header">
            <div class="logo"><a href="index.html"><img src="images/logo.png" alt="" title=""></a></div>
            <!--Nav Box-->
            <div class="nav-outer clearfix">
                <div class="outer-box">
                    <!-- Search Btn -->
                    <div class="search-box">
                        <button class="search-btn mobile-search-btn"><i
                                class="flaticon-magnifying-glass"></i></button>
                    </div><!-- Cart Btn -->
                    <button
                            class="cart-btn"><i class="icon flaticon-shopping-cart"></i><span
                            class="count">3</span></button>
                    <a href="#nav-mobile"
                       class="mobile-nav-toggler navbar-trigger"><span class="fa fa-bars"></span></a>
                </div>
            </div>
        </div><!-- Mobile Nav -->
        <div id="nav-mobile"></div><!-- Header Search -->
        <div class="search-popup"><span class="search-back-drop"></span>
            <button class="close-search"><span
                    class="fa fa-times"></span></button>
            <div class="search-inner">
                <form method="post" action="blog-showcase.html">
                    <div class="form-group"><input type="search" name="search-field" value=""
                                                   placeholder="Search..." required="">
                        <button type="submit"><i
                                class="flaticon-magnifying-glass"></i></button>
                    </div>
                </form>
            </div>
        </div><!-- End Header Search -->
        <!-- Sidebar Cart -->
        <div class="sidebar-cart"><span class="cart-back-drop"></span>
            <div class="shopping-cart">
                <div class="cart-header">
                    <div class="title">Shopping Cart <span>(3)</span></div>
                    <button class="close-cart"><span
                            class="flaticon-add"></span></button>
                </div>
                <ul class="shopping-cart-items">
                    <li class="cart-item"><img src="images/resource/products/product-thumb-1.jpg" alt="#"
                                               class="thumb"/><span class="item-name">First Aid Kit</span><span
                            class="item-quantity">1 x <span class="item-amount">$50.00</span></span><a
                            href="shop-single.jsp" class="product-detail"></a>
                        <button
                                class="remove">Remove
                        </button>
                    </li>
                    <li class="cart-item"><img src="images/resource/products/product-thumb-2.jpg" alt="#"
                                               class="thumb"/><span class="item-name">Vitamin Tablet</span><span
                            class="item-quantity">1 x <span class="item-amount">$25.00</span></span><a
                            href="shop-single.jsp" class="product-detail"></a>
                        <button
                                class="remove">Remove
                        </button>
                    </li>
                    <li class="cart-item"><img src="images/resource/products/product-thumb-3.jpg" alt="#"
                                               class="thumb"/><span class="item-name">Zinc Tablet</span><span
                            class="item-quantity">1
                                x <span class="item-amount">$15.00</span></span><a href="shop-single.jsp"
                                                                                   class="product-detail"></a>
                        <button class="remove">Remove</button>
                    </li>
                </ul>
                <div class="cart-footer">
                    <div class="shopping-cart-total"><strong>Subtotal:</strong>$90.00</div>
                    <a
                            href="shopping-cart.html" class="theme-btn btn-style-three"><span class="btn-title">View
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
                <h1>Our Shop</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.html">Home</a></li>
                    <li>Shop</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
    <!-- Sidebar Page Container -->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="row clearfix">
                <!--Content Side-->
                <div class="content-side col-lg-8 col-md-12 col-sm-12">
                    <div class="our-shop">
                        <div class="shop-upper-box">
                            <div class="orderby"><select name="orderby">
                                <option value="default">Default Sorting</option>
                                <option value="popularity">Sort by popularity</option>
                                <option value="rating">Sort by average rating</option>
                                <option value="date">Sort by newness</option>
                                <option value="price">Sort by price:low to high</option>
                                <option value="price-desc">Sort by price:high to low</option>
                            </select>
                            </div>
                            <div class="items-label">Showing all 9 results</div>
                        </div>
                        <div class="row">
                            <c:if test="${requestScope.option==1}">
                                    <div class="shop-item col-lg-4 col-md-6 col-sm-12">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><a href="shop-single.jsp"><img
                                                        src="images/resource/products/1.jpg" alt=""></a></figure>
                                                <span
                                                        class="onsale">Sale</span>
                                            </div>
                                            <div class="lower-content">
                                                <div class="rating"><span class="fa fa-star"></span><span
                                                        class="fa fa-star"></span><span class="fa fa-star"></span><span
                                                        class="fa fa-star"></span><span class="fa fa-star light"></span>
                                                </div>
                                                <h4 class="name"><a href="shop-single.jsp">${requestScope.merchandises.item_name}</a></h4>
                                                <div class="price">${requestScope.merchandises.item_price}
                                                    <del>${requestScope.merchandises.item_price}</del>
                                                </div>
                                                <a href="shopping-cart.html" class="theme-btn add-to-cart">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                            </c:if>
                            <c:if test="${requestScope.option==0}">
                                <c:forEach items="${requestScope.merchandises}" var="merchandise">
                                    <div class="shop-item col-lg-4 col-md-6 col-sm-12">
                                        <div class="inner-box">
                                            <div class="image-box">
                                                <figure class="image"><a href="shop-single.jsp"><img
                                                        src="images/resource/products/1.jpg" alt=""></a></figure>
                                                <span
                                                        class="onsale">Sale</span>
                                            </div>
                                            <div class="lower-content">
                                                <div class="rating"><span class="fa fa-star"></span><span
                                                        class="fa fa-star"></span><span class="fa fa-star"></span><span
                                                        class="fa fa-star"></span><span class="fa fa-star light"></span>
                                                </div>
                                                <h4 class="name"><a href="shop-single.jsp">${merchandise.item_name}</a></h4>
                                                <div class="price">${merchandise.item_price}
                                                    <del>${merchandise.item_price}</del>
                                                </div>
                                                <a href="shopping-cart.html" class="theme-btn add-to-cart">Add to cart</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:if>
                        </div>
                        <!--Sidebar Side-->

                    </div>
                </div>
                <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar">
                        <!--search box-->
                        <div class="sidebar-widget search-box">
                            <form method="post" action="merchandiseServlet">
                                <input type="hidden" name="action" value="getMerchandise" />
                                <div class="form-group">
                                    <input type="search" name="search-field" value="" placeholder="Search....." required="">
                                    <button type="submit"><span
                                            class="icon fa fa-search"></span>
                                    </button>
                                </div>
                            </form>
                        </div><!-- Categories -->
                        <div class="sidebar-widget category-list">
                            <div class="sidebar-title">
                                <h3>Categories</h3>
                            </div>
                            <ul class="cat-list">
                                <li><a href="#">Procedures <span>(06)</span></a></li>
                                <li><a href="#">Transplantation <span>(02)</span></a></li>
                                <li class="active"><a href="#">Management <span>(05)</span></a></li>
                                <li><a href="#">Healthcare Tips <span>(25)</span></a></li>
                                <li><a href="#">Uncategorized <span>(04)</span></a></li>
                            </ul>
                        </div><!-- Latest News -->
                        <div class="sidebar-widget latest-news">
                            <div class="sidebar-title">
                                <h3>Popular Products</h3>
                            </div>
                            <div class="widget-content">
                                <article class="post">
                                    <div class="post-thumb"><a href="shop-single.jsp"><img
                                            src="images/resource/products/product-thumb-1.jpg" alt=""></a></div>
                                    <h5><a href="shop-single.jsp">First Aid Kit</a></h5>
                                    <div class="price">$9.00</div>
                                    <div class="rating"><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span></div>
                                </article>
                                <article class="post">
                                    <div class="post-thumb"><a href="shop-single.jsp"><img
                                            src="images/resource/products/product-thumb-2.jpg" alt=""></a></div>
                                    <h5><a href="shop-single.jsp">Vitamin C+</a></h5>
                                    <div class="price">$20.00</div>
                                    <div class="rating"><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span></div>
                                </article>
                                <article class="post">
                                    <div class="post-thumb"><a href="shop-single.jsp"><img
                                            src="images/resource/products/product-thumb-3.jpg" alt=""></a></div>
                                    <h5><a href="shop-single.jsp">Zinc Tablet</a></h5>
                                    <div class="price">$ 18.00</div>
                                    <div class="rating"><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span><span
                                            class="fa fa-star"></span><span class="fa fa-star"></span></div>
                                </article>
                            </div>
                        </div><!-- Newslatters-->
                        <div class="sidebar-widget newslatters">
                            <div class="sidebar-title">
                                <h3><span class="icon flaticon-rss-symbol"></span>Newsletter</h3>
                            </div>
                            <div class="text">Enter your email address below to subscribe to our newsletter</div>
                            <form method="post" action="blog-sidebar.html">
                                <div class="form-group"><input type="text" name="input" value=""
                                                               placeholder="Your email address..." required="">
                                    <button type="submit"
                                            class="theme-btn"><span class="btn-title">Subscribe</span></button>
                                </div>
                            </form>
                        </div><!-- Instagram Widget -->
                        <div class="sidebar-widget instagram-widget">
                            <div class="sidebar-title">
                                <h3>Instagram</h3>
                            </div>
                            <div class="widget-content">
                                <div class="clearfix">
                                    <figure class="post-thumb"><img src="images/resource/instagram-1.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                    <figure class="post-thumb"><img src="images/resource/instagram-2.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                    <figure class="post-thumb"><img src="images/resource/instagram-3.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                    <figure class="post-thumb"><img src="images/resource/instagram-4.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                    <figure class="post-thumb"><img src="images/resource/instagram-5.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                    <figure class="post-thumb"><img src="images/resource/instagram-6.jpg" alt=""><a
                                            href="blog-single.html" class="overlay-box"><span
                                            class="icon fa fa-link"></span></a></figure>
                                </div>
                            </div>
                        </div><!-- Tags -->
                        <div class="sidebar-widget tags">
                            <div class="sidebar-title">
                                <h3>Tag Cloud</h3>
                            </div>
                            <ul class="popular-tags clearfix">
                                <li><a href="#">Ideas</a></li>
                                <li><a href="#">Doctor</a></li>
                                <li><a href="#">Health</a></li>
                                <li><a href="#">Department</a></li>
                                <li><a href="#">Nurse</a></li>
                                <li><a href="#">Growth</a></li>
                                <li><a href="#">Expert</a></li>
                                <li><a href="#">Tips</a></li>
                                <li><a href="#">Service</a></li>
                                <li><a href="#">Medical</a></li>
                            </ul>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <div>

    </div>
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