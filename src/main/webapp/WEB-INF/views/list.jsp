<%--
  Created by IntelliJ IDEA.
  User: 13646
  Date: 2019/6/10
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
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
    <title>Sadia正品鞋城XX</title>

    <!-- Favicons -->

    <%--<link rel="apple-touch-icon" href="${path}/assets/img/icon.png">--%>
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
        <h3>Cart</h3>

        <div class="list-unstyled components">
            <div class="header-user-btn">
                <a href="${path}/cart" class="btn btn-checkout btn-style-3">Cart</a>
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
                                                <input type="search" name="name" class="search-field" placeholder="Type Something...">
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
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <div class="mobile-menu mobile__menu"></div>
                        </div>
                    </div>
                    <div class="col-lg-7 col-md-6 col-6 d-none d-md-block">
                        <div class="header-middle-right justify-content-md-end">
                            <nav class="main-navigation">
                                <!-- Mainmenu Start -->
                                <ul class="mainmenu sadia-main-menu">

                                    <li class="sadia-mainmenu-itm menu-item-has-children">
                                        <a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if>brandId=2001" class="sadia-mainmenu-link">NIKE</a>
                                    </li>
                                    <li class="sadia-mainmenu-itm menu-item-has-children">
                                        <a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if>brandId=2002" class="sadia-mainmenu-link">ADIDAS</a>
                                    </li>
                                    <li class="sadia-mainmenu-itm menu-item-has-children">
                                        <a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if>brandId=2003" class="sadia-mainmenu-link">李宁</a>
                                    </li>
                                    <li class="sadia-mainmenu-itm menu-item-has-children">
                                        <a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if>brandId=2004" class="sadia-mainmenu-link">安踏</a>
                                    </li>
                                    <li class="sadia-mainmenu-itm menu-item-has-children">
                                        <a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if>brandId=2006" class="sadia-mainmenu-link">JORDAN</a>
                                    </li>
                                </ul>
                                <!-- Mainmenu End -->
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header area End -->
        <!-- Main content wrapper Start -->
        <div class="main-content-wrapper">
            <div class="shop-area section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- Shop Layout Start -->
                            <div class="main-shop-wrapper">
                                <div class="tab-content" id="myTabContent-2">
                                    <div class="tab-pane show active" id="grid">
                                        <div class="product-grid-view">
                                            <div class="row">
                                                <!-- Product Box Start -->
                                                <c:forEach items="${requestScope.list}" var="product">
                                                    <div class="col-md-6 col-lg-3">
                                                        <div class="product-grid mb--30">
                                                            <div class="product-image">
                                                                <a href="${path}/product?productId=${product.productId}">
                                                                    <img class="pic-1" alt="pic1" src="${path}${product.picAdress}">
                                                                    <img class="pic-2" alt="pic2" src="${path}${product.picAdress}">
                                                                </a>
                                                            </div>
                                                            <div class="product-content">
                                                                <h3 class="title"><a href="${path}/product?productId=${product.productId}">${product.productName}</a></h3>
                                                                <div class="price"><fmt:formatNumber value="${product.price}" type="CURRENCY"/> </div>
                                                                <a class="add-to-cart" href="javascript:void (0)" onclick="add2cart(this)">+ 添加到购物车</a>
                                                                <input type="hidden" name="productId" value="${product.productId}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Product Box End -->
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row mb-md--30">
                                    <div class="col-12 text-center">
                                        <ul class="pagination">
                                            <c:forEach begin="1" end="${requestScope.pages}" varStatus="status">
                                                <li><a href="${path}/list?<c:if test="${param.sortId != null}">sortId=${param.sortId}&</c:if><c:if test="${param.brandId != null}">sortId=${param.BrandId}&</c:if><c:if test="${param.name != null}">sortId=${param.name}&</c:if>page=${status.count}">${status.count}</a></li>

                                            </c:forEach>
                                            <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- Shop Layout End -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main content wrapper End -->




    </div>

</div>




<!-- ************************* JS ************************* -->

<!-- jQuery JS -->
<script type="text/javascript" src="${path}/assets/js/vendor/jquery.min.js"></script>

<!-- Popper JS -->
<script type="text/javascript" src="${path}/assets/js/popper.min.js"></script>

<!-- Bootstrap JS -->
<script type="text/javascript" src="${path}/assets/js/bootstrap.min.js"></script>

<!-- Plugins JS -->
<script type="text/javascript" src="${path}/assets/js/plugins.js"></script>

<!-- Main JS -->
<script type="text/javascript" src="${path}/assets/js/main.js"></script>
<script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript">
        function add2cart(e) {
            var productId = $(e).parent().children("input[name='productId']").val();
            var num = 1;
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
        };
</script>
</body>
</html>

