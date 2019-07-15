<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head lang="en">
	<title>订单</title>
	<link rel="stylesheet" type="text/css" href="${path}/css/public.css"/>
	<link rel="stylesheet" type="text/css" href="${path}/css/myorder.css" />
	<link rel="stylesheet" href="${path}/static/css/bootstrap.min.css">
	<style type="text/css">
		.card-body{
			padding: 0.5rem;
		}
		.card{
			margin-bottom: 1rem;
		}
		.table{
			margin-bottom: 0;
		}

	</style>

	</head>
	<body>
		<!------------------------------head------------------------------>
		<div class="head ding">
			<div class="wrapper clearfix">
				<div class="clearfix" id="top">
					<h1 class="fl"><a href="${path}/index"><img src="${path}/assets/img/logo.png"/></a></h1>
					<div class="fr clearfix" id="top1">
						<form action="${path}/list" method="get" class="fl">
							<input type="text" name="name" placeholder="搜索" />
							<input type="button" />
						</form>
					</div>
				</div>
				<ul class="clearfix" id="bott">
					<li><a href="${path}/index">首页</a></li>
					<li><a href="${path}/list">全部商品</a></li>
					<li><a href="${path}/list?sortId=3001">运动鞋</a></li>
					<li><a href="${path}/list?sortId=3002">板鞋</a></li>
					<li><a href="${path}/list?sortId=3004">篮球鞋</a></li>
				</ul>
			</div>
		</div>
		<!------------------------------idea------------------------------>
		<div class="address mt">
			<div class="wrapper clearfix">
				<a href="#" class="fl">首页</a>
				<span>/</span>
				<a href="${path}/myxin">个人中心</a>
				<span>/</span>
				<a href="${path}/myorder" class="on">我的订单</a>
			</div>
		</div>
		
		<!------------------------------Bott------------------------------>
		<div class="Bott">
			<div class="wrapper clearfix">
				<div class="zuo fl">
					<h3>
						<c:if test="${sessionScope.user!=null}">
							<p>[${sessionScope.user.userName}]</p>
							<p><a href="${pageContext.request.contextPath}/logout">[退出登录]</a></p>
						</c:if>
						<c:if test="${sessionScope.user==null}">
							<p><a href="${path}/login">[去登陆]</a></p>
						</c:if>
					</h3>
					<div>
						<h4>我的交易</h4>
						<ul>
							<li><a href="${path}/cart">我的购物车</a></li>
							<li><a href="${path}/myorder">我的订单</a></li>
						</ul>
						<h4>个人中心</h4>
						<ul>
							<li  class="on"><a href="${path}/myxin">我的中心</a></li>
							<li><a href="${path}/address">地址管理</a></li>
						</ul>
						<h4>账户管理</h4>
						<ul>
							<li><a href="${path}/remima">修改密码</a></li>
						</ul>
					</div>
				</div>
				<div class="you fl">
					<div class="my clearfix">
						<h2 class="fl">我的订单</h2>
					</div>
					<c:forEach items="${requestScope.list}" var="order">
						<div class="card">
							<div class="card-header">
								<span>订单号：${order.ORDER_ID}</span>
								<span>下单时间：${order.CREATE_TIME}</span>

							</div>
							<div class="card-body">
								<table class="table table-sm table-bordered">
									<c:forEach items="${order.products}" var="product" varStatus="status">
										<tr>
											<td class="w-100px">
												<img class="img-thumbnail" width="70px" height="70px" src="${path}/${product.PIC_ADRESS}" alt="">
											</td>
											<td>
												<a href="${path}/product?productId=${product.PRODUCT_ID}">${product.PRODUCT_NAME}</a>
											</td>
											<td class="w-50px text-center">${product.NUM}</td>
											<td class="w-100px text-center"><fmt:formatNumber value="${product.PRICE}" type="CURRENCY"></fmt:formatNumber> </td>
											<c:if test="${status.first}">
												<td class="w-120px" rowspan="${fn:length(order.products)}">
														${order.address.name}<br>
														${order.address.contact}<br>
														${order.address.province}${order.address.city}${order.address.county}${order.address.adress}
												</td>
												<td class="w-120px" rowspan="${fn:length(order.products)}">
													总金额：<br>
													<fmt:formatNumber value="${order.totalPrice}" type="CURRENCY"></fmt:formatNumber>
												</td>
											</c:if>
										</tr>
									</c:forEach>

								</table>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<!--返回顶部-->
		<div class="gotop">
			<a href="cart.jsp">
			<dl>
				<dt><img src="${path}/img/gt1.png"/></dt>
				<dd>去购<br />物车</dd>
			</dl>
			</a>
			<a href="#" class="dh">
			<dl>
				<dt><img src="${path}/img/gt2.png"/></dt>
				<dd>联系<br />客服</dd>
			</dl>
			</a>
			<a href="${path}/myxin">
			<dl>
				<dt><img src="${path}/img/gt3.png"/></dt>
				<dd>个人<br />中心</dd>
			</dl>
			</a>
			<a href="#" class="toptop" style="display: none">
			<dl>
				<dt><img src="${path}/img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>
		<script src="${path}/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/user.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
