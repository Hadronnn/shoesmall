<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
	<head lang="en">
		<meta charset="utf-8" />
		<title>个人中心</title>
		<link rel="stylesheet" type="text/css" href="css/public.css"/>
		<link rel="stylesheet" type="text/css" href="css/mygxin.css" />
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
		<div class="address mt" id="add">
			<div class="wrapper clearfix">
				<a href="${path}/index" class="fl">首页</a>
				<span>/</span>
				<a href="${path}/myxin" class="on">个人中心</a>
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
					<div class="tx clearfix">
						<div class="fl clearfix">
							<p class="fl"><span>[${sessionScope.user.userName}]</span></p>
						</div>
						<div class="fr">绑定手机号：${sessionScope.user.phone}</div>
					</div>
					<div class="bott">
						<div class="clearfix">
							<a href="#" class="fl"><img src="${path}/img/gxin1.jpg"/></a>
							<p class="fl"><span>待支付的订单：<strong>0</strong></span>
								<a href="myorderq.jsp">查看待支付订单></a>
							</p>
						</div>
						<div class="clearfix">
							<a href="#" class="fl"><img src="${path}/img/gxin2.jpg"/></a>
							<p class="fl"><span>待收货的订单：<strong>0</strong></span>
								<a href="${path}/myorder">查看待收货订单></a>
							</p>
						</div>
						<div class="clearfix">
							<a href="#" class="fl"><img src="${path}/img/gxin3.jpg"/></a>
							<p class="fl"><span>待评价的订单：<strong>0</strong></span>
								<a href="myprod.jsp">查看待评价订单></a>
							</p>
						</div>
						<div class="clearfix">
							<a href="#" class="fl"><img src="${path}/img/gxin4.jpg"/></a>
							<p class="fl"><span>喜欢的商品：<strong>0</strong></span>
								<a href="#">查看喜欢的商品></a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		<!--返回顶部-->
		<div class="gotop">
			<a href="${path}/cart">
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
