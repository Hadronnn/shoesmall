<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
	<head lang="en">
		<title>结算页面</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${path}/css/proList.css" />
		<link rel="stylesheet" type="text/css" href="${path}/css/mygxin.css" />
		<style type="text/css">
			.order-pic{
				height: 87px;
				width: 87px;
			}
		</style>
	</head>
	<body>
		<!----------------------------------------order------------------>
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
		<div class="order cart mt">
			<!-----------------site------------------->
			<div class="site">
				<p class="wrapper clearfix">
					<span class="fl">订单确认</span>
					<img class="top" src="${path}/img/temp/cartTop02.png">
				</p>
			</div>
			<!-----------------orderCon------------------->
			<div class="orderCon wrapper clearfix">
				<div class="orderL fl">
					<!--------h3---------------->
					<!--------addres---------------->
					<div class="addres clearfix">
						<c:forEach items="${requestScope.list}" var="address" >
							<div class="addre fl on">
								<div class="tit clearfix">
									<p class="fl">${address.name}
										<%--<span class="default">[默认地址]</span>--%>
									</p>
									<p class="fr">
										<input type="hidden" name="addressId" value="${address.adressId}">
										<a href="#" class="a-del">删除</a>
										<span>|</span>
										<a href="#" class="edit">编辑</a>
									</p>
								</div>
								<div class="addCon">
									<p>${address.province}&nbsp;${address.city}&nbsp;${address.county}&nbsp;${address.adress}</p>
									<p>${address.contact}</p>
								</div>
							</div>
						</c:forEach>
					</div>
					<!--------dis---------------->
				</div>
				<div class="orderR fr">
					<div class="msg">
						<h3>订单内容<a href="cart.jsp" class="fr">返回购物车</a></h3>
						<!--------ul---------------->
						<c:forEach items="${requestScope.product}" var="product">
							<ul class="clearfix">
								<input type="hidden" name="productId" value="${product.PRODUCT_ID}">
								<li class="fl">
									<img class="order-pic" src="${path}/${product.PIC_ADRESS}">
								</li>
								<li class="fl">
									<span>${product.PRODUCT_NAME}</span>
									<p>商品ID：${product.PRODUCT_ID}</p>
									<p>数量：${product.NUM}</p>
								</li>
								<li class="fr">￥${product.PRICE}</li>
							</ul>
						</c:forEach>
					</div>
					<!--------tips---------------->
					<div class="tips">
						<p><span class="fl">商品个数：</span><span class="fr">${requestScope.total.NUM}</span></p>
						<p><span class="fl">商品金额：</span><span class="fr">￥${requestScope.total.PRICE}.00</span></p>
					</div>
					<!--------tips count---------------->
					<div class="count tips">
						<p><span class="fl">合计：</span><span class="fr">￥${requestScope.total.PRICE}.00</span></p>
					</div>
					<!--<input type="button" name="" value="去支付"> -->
					<a href="#" id="pay" class="pay">提交订单</a>
				</div>
			</div>
		</div>
		<!--编辑弹框-->
		<!--遮罩-->
		<div class="mask"></div>
		<div class="adddz editAddre">
			<form action="#" method="get">
				<input name="name" type="text" placeholder="姓名" class="on" />
				<input name="contact" type="text" placeholder="手机号" />
				<div class="city">
					<select class="province" name="province" onchange="selectCityByPid(this)">
						<option value="省份/自治区">省份/自治区</option>
					</select>
					<select class="citys" name="city" onchange="selectCountyByPid(this)">
						<option value="城市/地区">城市/地区</option>
					</select>
					<select class="county" name="county">
						<option value="区/县">区/县</option>
					</select>
				</div>
				<textarea name="adress" rows="" cols="" placeholder="详细地址"></textarea>
				<input name="code" type="text" placeholder="邮政编码" />
				<div class="bc">
					<input class="btn-modify"  type="button" value="保存" />
					<input type="button" value="取消" />
				</div>
			</form>
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
			<a href="#" class="toptop" style="display: none;">
			<dl>
				<dt><img src="img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>
		<!--footer-->
		<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/static/js/city.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/user.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			$(function () {
				<%--console.log(${requestScope.product});--%>
				for (var province in citys[100000]){
					// console.log(province);
					// console.log(citys[100000][province]);
					var name = citys[100000][province];
					$(".province").append("<option value=\"" + province + "\">"+name+"</option>");
				}
			});
			function selectCityByPid(e) {
				var provinceCode=$(e).val();
				$(".citys").empty();
				$(".citys").append("<option value=\"" + '城市/地区' + "\">"+'城市/地区'+"</option>");
				$(".county").empty();
				$(".county").append("<option value=\"" + '区/县' + "\">"+'区/县'+"</option>");
				for (var city in citys[provinceCode]) {
					var name = citys[provinceCode][city];
					$(".citys").append("<option value=\"" + city + "\">"+name+"</option>");
				}
			}
			function selectCountyByPid(e) {
				var cityCode=$(e).val();
				$(".county").empty();
				$(".county").append("<option value=\"" + '区/县' + "\">"+'区/县'+"</option>");
				for (var county in citys[cityCode]) {
					var name = citys[cityCode][county];
					$(".county").append("<option value=\"" + county + "\">"+name+"</option>");
				}
			}
			$(".deladd").click(function(){
				var div = $(this).parent().parent(".dizhi");
				var addressId = $(this).parent().parent(".dizhi").children("input[name='addressId']").val();
				// console.log(addressId);
				// console.log(div[0]);
				$.ajax({
					url:"${path}/deleteaddress",
					type:"get",
					data:{addressId:addressId},
					success:function (res) {
						if (res.success === true){
							alert("删除地址成功");
							div.remove();
						} else{
							alert("删除地址失败");
						}
					}
				});
				// $(this).parents(".dizhi").remove();
			});
			$(".btn-modify").click(function () {
				var addressId = $(this).parent().parent().parent().children("input[name='addressId']").val();
				// console.log(addressId);
				var form = $(this).parent().parent();
				var name = form.children("input[name='name']").val();
				var contact = form.children("input[name='contact']").val();
				var province = form.children(".city").children("select[name='province']").children(":selected").text();
				var city = form.children(".city").children("select[name='city']").children(":selected").text();
				var county = form.children(".city").children("select[name='county']").children(":selected").text();
				var adress = form.children("textarea").val();
				var code = form.children("input[name='code']").val();
				var data = {
					addressId:addressId,
					name:name,
					contact:contact,
					province:province,
					city:city,
					county:county,
					adress:adress,
					code:code
				};
				console.log(data);
				$.ajax({
					url:"${path}/modifyAddress",
					type:"get",
					data:data,
					success:function (res) {
						if (res.success === true){
							alert("修改成功");
							location.reload();
						} else{
							alert("修改失败");
						}
					}
				});
			});
			$(function () {
				$("#pay").click(function () {
					var url = "${path}/submit?";
					var addressId = $(".on").children(":first").children(".fr").children("input[name='addressId']").val();
					url += "addressId="+ addressId +"&";
					console.log(addressId);
					$(":hidden[name='productId']").each(function () {
						url += "productId="+ this.value +"&";
					});
					console.log(url);
					$.ajax({
						url:url,
						type:"get",
						success:function (res) {
							if (res.success) {
								alert("下单成功");
								location ="${path}/myorder";
							}else{
								alert("下单失败");
							}
						}
					});
				});
			});
		</script>
	</body>
</html>
