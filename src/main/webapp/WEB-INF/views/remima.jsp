<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head lang="en">
		<meta charset="utf-8" />
		<title>个人信息</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${path}/css/mygrxx.css" />
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
				<a href="${path}/index" class="fl">首页</a>
				<span>/</span>
				<a href="${path}/myxin" class="on">个人信息</a>
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
							<li><a href="${path}/myorderq">我的订单</a></li>
							<li><a href="${path}/myprod">评价晒单</a></li>
						</ul>
						<h4>个人中心</h4>
						<ul>
							<li  class="on"><a href="${path}/myxin">我的中心</a></li>
							<li><a href="${path}/address">地址管理</a></li>
						</ul>
						<h4>账户管理</h4>
						<ul>
							<li><a href="${path}/mygrxx">个人信息</a></li>
							<li><a href="${path}/remima">修改密码</a></li>
						</ul>
					</div>
				</div>
				<div class="you fl">
					<h2>修改密码</h2>
					<form action="#" method="get" class="remima">
						<input type="hidden" name="userId" value="${sessionScope.user.userId}">
						<p><span>原密码：</span><input name="password" type="text" /></p>
						<p class="op">输入原密码</p>
						<p><span>新密码：</span><input name="newpassword" type="password" /></p>
						<p class="op">输入新密码</p>
						<p><span>重复新密码：</span><input name="tassword" type="password" /></p>
						<p class="op">请再次输入密码</p>
						<input type="submit" value="提交" />
					</form>
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
		<!--footer-->
		<div class="footer">
			<div class="top">
				<div class="wrapper">
					<div class="clearfix">
						<a href="#2" class="fl"><img src="${path}/img/foot1.png"/></a>
						<span class="fl">7天无理由退货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="${path}/img/foot2.png"/></a>
						<span class="fl">15天免费换货</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="${path}/img/foot3.png"/></a>
						<span class="fl">满599包邮</span>
					</div>
					<div class="clearfix">
						<a href="#2" class="fl"><img src="${path}/img/foot4.png"/></a>
						<span class="fl">手机特色服务</span>
					</div>
				</div>
			</div>
			<p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br />
			违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p>
		</div>
		<script src="${path}/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/user.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$("input[type='submit']").click(function () {
				var password = $("input[name='password']").val();
				var newpassword = $("input[name='newpassword']").val();
				var tassword = $("input[name='tassword']").val();
				console.log(password);
				console.log(tassword);
				console.log(newpassword);
				if (tassword !== newpassword){
					alert("两次输入的密码不一致！");
				}else{
					$.ajax({
						url:"${path}/remima",
						type:"post",
						data:{
							password:password,
							newpassword:newpassword,
						},
						success:function (res) {
							if (res.success){
								alert("修改成功！");
								location = "${path}/logout";
							} else{
								alert("修改失败！")
							}
						}
					});
				}
			});
		</script>
	</body>
</html>
