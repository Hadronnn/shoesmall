<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="description" content="this is a demo meta description">
    <meta name="keywords" content="this is a demo meta keywords">
    <title>Sadia正品鞋城</title>

    <!-- Favicons -->
    
    <link rel="apple-touch-icon" href="${path}/assets/img/icon.png">
    <!-- ************************* CSS ************************* -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${path}/assets/css/bootstrap.min.css">

    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="${path}/assets/css/font-awesome.min.css">

    <!-- All Plugins CSS css -->
    <link rel="stylesheet" href="${path}/assets/css/plugins.css">

    <!-- style css -->
    <link rel="stylesheet" href="${path}/assets/css/main.css">

    <!-- responsive css -->
    <link rel="stylesheet" href="${path}/assets/css/responsive.css">

    <!-- modernizr JS
    ============================================ -->
    <script src="${path}/assets/js/modernizr-2.8.3.min.js"></script>
</head>
<body>
    <!-- Main Wrapper Start -->

    <div class="wrapper">

        <!-- Sidebar  -->
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fa fa-close"></i>
            </div>
                <div class="header-user-btn">
                    <a href="${path}/cart" class="btn btn-checkout btn-style-3">Cart</a>
                </div>
        </nav>
        <!-- Sidebar End -->

        <!-- Page Content  -->
        <div id="content">
            <!-- Header area Start -->
            <header class="header">
                <div class="header-middle fixed-header">
                    <div class="container">
                        <div class="row no-gutters">
                            <div class="col-lg-2 col-md-3 col-sm-6 col-6 text-left">
                                <a class="logo-box" href="index.jsp">
                                    <img src="${path}/assets/img/logo.png" alt="logo">
                                </a>
                            </div>
                            <div class="col-lg-7 col-md-6 col-6 d-none d-md-block">
                                <div class="header-middle-right justify-content-md-end">
                                    <nav class="main-navigation">
                                        <!-- Mainmenu Start -->
                                        <ul class="mainmenu sadia-main-menu">
                                            <li class="sadia-mainmenu-itm">
                                                <c:if test="${sessionScope.user == null}">
                                                    <a href="${path}/login" class="sadia-mainmenu-link">登录注册</a>
                                                </c:if>
                                                <c:if test="${sessionScope.user != null}">
                                                    <a href="${path}/myxin" class="sadia-mainmenu-link">${sessionScope.user.userName}</a>
                                                </c:if>
                                            </li>
                                            <li class="sadia-mainmenu-itm menu-item-has-children">
                                                <a href="${path}/index" class="sadia-mainmenu-link">首页</a>
                                            </li>

                                            <li class="sadia-mainmenu-itm menu-item-has-children">
                                                <a href="${path}/list?sortId=3001" class="sadia-mainmenu-link">运动鞋</a>
                                            </li>
                                            <li class="sadia-mainmenu-itm menu-item-has-children">
                                                <a href="${path}/list?sortId=3002" class="sadia-mainmenu-link">板鞋</a>
                                            </li>
                                            <li class="sadia-mainmenu-itm menu-item-has-children">
                                                <a href="${path}/list?sortId=3004" class="sadia-mainmenu-link">篮球鞋</a>
                                            </li>
                                            <li class="sadia-mainmenu-itm menu-item-has-children">
                                                <a href="${path}/list" class="sadia-mainmenu-link">全部商品</a>
                                            </li>
                                        </ul>
                                        <!-- Mainmenu End -->
                                    </nav>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-6">
                                <div class="header-middle-right justify-content-md-end">
                                    <!-- Header search Start -->
                                    <div class="header-user header-area-user">
                                        <a class="sadia-user-toggle" data-vw-action="open-search-popup">
                                            <i class="fa fa-search header-heart-icon"></i>
                                        </a>
                                    </div>
                                    <div class="vw-search-popup">
                                        <div class="vw-search-popup-wrapper">
                                            <div class="inner">
                                                <form action="${path}/list" class="clearfix">
                                                    <input type="search" name="name" class="search-field" placeholder="请输入关键字">
                                                    <button type="submit" class="search-submit">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <a href="#" class="vw-search-popup-close" data-vw-action="close-search-popup">
                                            <span></span>
                                            <span></span>
                                        </a>
                                    </div>
                                    <!-- Header search End -->

                                    <a id="sidebarCollapse">
                                        <i class="fa fa-shopping-cart"></i>
                                        <sup class="cart-badge">03</sup>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <div class="mobile-menu mobile__menu"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- Header area End -->

            <!-- Slider area Start -->
            <div class="slider-area">
                <div class="slider-wrapper owl-carousel" id="homepage-slider">
                    <!-- Single Slider Start -->
                    <div class="single-slider" style="background-image: url(${path}/assets/img/fashion/slider/fashion1.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-12 offset-lg-3">
                                    <div class="slider-content text-center">
                                        <p class="heading-primary sadia-heading-primary" data-animation="fadeInDown" data-delay=".2s" data-duration="2s">New Collections 2019</p>
                                        <p class="sadia-slider-text" data-animation="fadeInUp" data-delay=".5s" data-duration="2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel natus, explicabo sit nihil harum soluta at cumque magni</p>
                                        <a href="${path}/product?productId=4002" class="btn slider-btn" data-animation="fadeInUp" data-delay=".7s" data-duration="2s">Purchase Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single Slider End -->

                    <!-- Single Slider Start -->
                    <div class="single-slider" style="background-image: url(${path}/assets/img/fashion/slider/fashion2.jpg);">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6 col-md-12 offset-lg-3">
                                    <div class="slider-content text-center">
                                        <p class="heading-primary sadia-heading-primary" data-animation="fadeInDown" data-delay=".2s" data-duration="2s">New Collections 2019</p>
                                        <p class="sadia-slider-text" data-animation="fadeInUp" data-delay=".5s" data-duration="2s">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel natus, explicabo sit nihil harum soluta at cumque magni</p>
                                        <a href="${path}/list?brandId=2001" class="btn slider-btn" data-animation="fadeInUp" data-delay=".7s" data-duration="2s">Purchase Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Single Slider End -->

                </div>
            </div>


    <!-- Main Wrapper End -->
    </div>
    <!-- Scroll To Top -->
    <a class="scroll-to-top bounce-animate" href="#"><i class="fa fa-angle-double-up"></i></a>

    <div class="overlay menu-overlay"></div>
    
    <!-- Modal -->
    <div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-5 col-sm-12">
                            <div class="tab-content product-thumb-large">
                                <div id="thumb1" class="tab-pane active show fade">
                                    <img src="${path}/assets/img/fashion/product/1.jpg" alt="product thumb">
                                </div>
                                <div id="thumb2" class="tab-pane fade">
                                    <img src="${path}/assets/img/fashion/product/3.jpg" alt="product thumb">
                                </div>
                                <div id="thumb3" class="tab-pane fade">
                                    <img src="${path}/assets/img/fashion/product/9.jpg" alt="product thumb">
                                </div>
                                <div id="thumb4" class="tab-pane fade">
                                    <img src="${path}/assets/img/fashion/product/5.jpg" alt="product thumb">
                                </div>
                            </div>
                            <div class="product-thumbnail">
                                <div class="thumb-menu owl-carousel" id="thumbmenu">
                                    <div class="thumb-menu-item">
                                        <a href="#thumb1" data-toggle="tab" class="nav-link active">
                                            <img src="${path}/assets/img/fashion/product/1.jpg" alt="product thumb">
                                        </a>
                                    </div>
                                    <div class="thumb-menu-item">
                                        <a href="#thumb2" data-toggle="tab" class="nav-link">
                                            <img src="${path}/assets/img/fashion/product/3.jpg" alt="product thumb">
                                        </a>
                                    </div>
                                    <div class="thumb-menu-item">
                                        <a href="#thumb3" data-toggle="tab" class="nav-link">
                                            <img src="${path}/assets/img/fashion/product/9.jpg" alt="product thumb">
                                        </a>
                                    </div>
                                    <div class="thumb-menu-item">
                                        <a href="#thumb4" data-toggle="tab" class="nav-link">
                                            <img src="${path}/assets/img/fashion/product/5.jpg" alt="product thumb">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-7 col-sm-12">
                            <h3 class="product-title">Lorem ipsum solets</h3>
                            <div class="product-price">
                                <span class="sale-price">&dollar; 15.00</span>
                            </div>
                            <p class="product-desc">Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore adipisci eligendi fuga reiciendis possimus et doloribus, quae explicabo! Dolore tenetur voluptate neque mollitia a hic, enim cumque natus repudiandae sequi? Sunt, ipsam! Temporibus facilis nam aperiam voluptatem ducimus, deserunt adipisci corrupti. Soluta ut asperiores est nihil porro. Obcaecati, velit repellendus.</p>
                            <p><b>Availability:</b> In stock</p>
                            <p><b>Condition:</b> New Product</p>
                            <div class="product-varients">
                                <div class="sadia-product-size pb--20">
                                    <span class="sadia-product-label"><b>Size: </b></span>
                                    <select class="sadia-product-select ml--40">
                                        <option value="1">S</option>
                                        <option value="2">M</option>
                                        <option value="3">L</option>
                                    </select>
                                </div>
                            </div>
                            <div class="product-action-wrapper pb--20">
                                <span><b>Quantity: </b></span>
                                <div class="quantity ml--10">
                                    <input type="number" class="quantity-input" name="qty" id="qty" value="1">
                                </div>
                            </div>
                            <a href="#" class="btn">Add to cart</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- ************************* JS ************************* -->

    <!-- jQuery JS -->
    <script src="${path}/assets/js/vendor/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="${path}/assets/js/popper.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="${path}/assets/js/bootstrap.min.js"></script>

    <!-- Plugins JS -->
    <script src="${path}/assets/js/plugins.js"></script>

    <!-- Main JS -->
    <script src="${path}/assets/js/main.js"></script>

</body>
</html>
