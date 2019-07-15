<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script src="${path}/static/js/jquery-1.8.3.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn-add2cart").click(function () {
                var productId = ${param.productId};
                var num = $("input[name='qty']").val();
                console.log(productId,num);
                $.ajax({
                    url:"${path}/add2cart",
                    type:"get",
                    data:{
                        productId: productId,
                        num:num
                    },
                    success:function (res) {
                        console.log(res.isLogin);
                        console.log(res.uri);
                        if (res.isLogin === false){
                            alert("尚未登陆,请先登录");
                            location = "${path}/login?uri="+res.uri;
                            return;
                        }
                        if (res.result){
                            alert("添加成功");
                            location = "${path}/cart";
                        }else{
                            alert("添加失败");
                        }
                    }
                });
            });
        });
    </script>

</head>
<body>
    <!-- Main Wrapper Start -->

    <div class="wrapper">

        <!-- Sidebar  -->
        <nav id="sidebar">
            <div id="dismiss">
                <i class="fa fa-close"></i>
            </div>
            <h3>Cart</h3>

            <div class="list-unstyled components">
                <div class="header-user-item">
                    <div class="hcart-action">
                        <i class="fa fa-close"></i>
                    </div>

                <div class="header-user-btn">
                    <a href="${path}/cart" class="btn btn-checkout btn-style-3">Cart</a>
                </div>
            </div>
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
                                <a class="logo-box" href="${path}/index">
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
                                                    <input type="search" name="name" class="search-field" placeholder="Type Something...">
                                                    <button type="submit" class="search-submit">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        <a href="${path}/add2cart" class="vw-search-popup-close" data-vw-action="close-search-popup">
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
            <!-- Main Content Wrapper Start -->
            <div class="main-content-wrapper">
                <div class="single-products-area ptb--80">
                    <!-- Single Product Start -->
                    <section class="single-product pb--40">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-5">
                                    <!-- Tab Content Start -->
                                    <div class="tab-content product-thumb-large" id="myTabContent-3">
                                        <div class="tab-pane fade show active" id="product-large-one">
                                            <div class="single-product-img">
                                                <img src="${path}${requestScope.product.picAdress}" alt="product">
                                                <a href="${path}${product.picAdress}" class="popup-img-sproduct popup-link">
                                                    <i class="fa fa-search-plus"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Tab Content End -->

                                </div>
                                <div class="col-lg-7">
                                    <!-- Single Product Content Start -->
                                    <div class="single-product-content">
                                        <p>Wom
                                            en Fashion</p>
                                        <h3 class="product-title">${product.productName}</h3>
                                        <div class="product-price">
                                            <span class="sale-price"><fmt:formatNumber value="${product.price}" type="CURRENCY"/></span>
                                        </div>
                                        <hr>
                                        <div class="mtb--20">
                                            <p><b>销量:</b> ${product.salesVolume}</p>
                                            <p><b>库存:</b> ${product.stock}</p>
                                            <p><b>上架时间:</b><fmt:formatDate value="${product.addTime}" type="date" dateStyle="long"/> </p>
                                            <p><b>尺码:</b> 43</p>
                                            <p><b>商品编号:</b> ${product.productId}</p>
                                        </div>
                                        <div class="product-action-wrapper">
                                            <span class="sadia-product-label"><b>数量: </b></span>
                                            <div class="quantity ml--10">
                                                <input type="number" class="quantity-input" name="qty" value="1" oninput="if(value>${product.stock})value=${product.stock};if(value<1)value=1">
                                            </div>
                                            <button id="btn-add2cart" class="btn btn-style-4 mb--20">添加到购物车</button>
                                        </div>

                                    </div>
                                    <!-- Single Product Content End -->
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- Single Product End -->
                </div>
            </div>
            <!-- Main Content Wrapper End -->





        </div>

    </div>

    <!-- Main Wrapper End -->


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
