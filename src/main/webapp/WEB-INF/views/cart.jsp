<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
	<head lang="en">
		<meta charset="utf-8" />
		<title>购物车</title>
		<link rel="stylesheet" type="text/css" href="${path}/css/public.css"/>
		<link rel="stylesheet" type="text/css" href="${path}/css/proList.css" />
		<style type="text/css">
			.cart-img{
				width: 120px;
				height: 120px;
			}
			.name{
				width: 200px;
			}

		</style>

	</head>
	<body>
		<!--------------------------------------cart--------------------->
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
		<div class="cart mt">
			<!-----------------logo------------------->
			<!--<div class="logo">
				<h1 class="wrapper clearfix">
					<a href="index.html"><img class="fl" src="img/temp/logo.png"></a>
					<img class="top" src="img/temp/cartTop01.png">
				</h1>
			</div>-->
			<!-----------------site------------------->
			<div class="site">
				<p class=" wrapper clearfix">
					<span class="fl">购物车</span>
					<img class="top" src="${path}/img/temp/cartTop01.png">
					<a href="${path}/index" class="fr">继续购物&gt;</a>
				</p>
			</div>
			<!-----------------table------------------->
			<div class="table wrapper">
				<div class="tr">
					<div>商品</div>
					<div>单价</div>
					<div>数量</div>
					<div>小计</div>
					<div>操作</div>
				</div>
				<c:forEach items="${requestScope.list}" var="cart">
					<div class="th">
<%--						<input type="hidden" name="th-productId" value="${cart.PRODUCT_ID}">--%>
						<div class="pro clearfix">
							<label class="fl">
<%--                                <input type="hidden" name="th-productId" value="${cart.PRODUCT_ID}">--%>
								<input type="checkbox" value="${cart.PRODUCT_ID}"/>
								<span></span>
							</label>
							<a class="fl" href="${path}/product?productId=${cart.PRODUCT_ID}">
								<dl class="clearfix">
									<dt class="fl"><img class="cart-img" src="${path}/${cart.PIC_ADRESS}"></dt>
									<dd class="fl name">
										<p>${cart.PRODUCT_NAME}</p>
										<p>鞋码：43</p>
										<p>品牌：${cart.BRAND_NAME}</p>
									</dd>
								</dl>
							</a>
						</div>
						<div class="price">￥${cart.PRICE}</div>
						<div class="number">
							<p class="num clearfix">
								<img name="sub" onclick="action(this)" class="fl sub" src="img/temp/sub.jpg">
								<span class="fl">${cart.NUM}</span>
								<img name="add" onclick="action(this)" class="fl add" src="img/temp/add.jpg">
							</p>
						</div>
						<div class="price sAll">￥${cart.NUM * cart.PRICE}</div>
						<div class="price"><a class="del" href="#" onclick="del(this)" href="#2">删除</a></div>
					</div>
				</c:forEach>

				<div class="goOn">空空如也~<a href="WEB-INF/views/index.jsp">去逛逛</a></div>
				<div class="tr clearfix">
					<label class="fl">
						<input class="checkAll" type="checkbox"/>
						<span></span>
					</label>
					<p class="fl">
						<a href="#">全选</a>
						<a href="#" onclick="del(this)" class="del">删除</a>
					</p>
					<p class="fr">
						<span>共<small id="sl">0</small>件商品</span>
						<span>合计:&nbsp;<small id="all">￥0.00</small></span>
						<a href="javascript:void(0)" class="count">结算</a>
					</p>
				</div>
			</div>
		</div>
		<div class="mask"></div>
		<div class="tipDel">
			<p>确定要删除该商品吗？</p>
			<p class="clearfix">
				<a class="fl cer" href="#">确定</a>
				<a class="fr cancel" href="#">取消</a>
			</p>
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
				<dt><img src="${path}/img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>

		<!----------------mask------------------->
		<div class="mask"></div>
		<!-------------------mask内容------------------->
		<div class="proDets">
			<img class="off" src="${path}/img/temp/off.jpg" />
			<div class="proCon clearfix">
				<div class="proImg fr">
					<img class="list" src="${path}/img/temp/proDet.jpg"  />
					<div class="smallImg clearfix">
						<img src="${path}/img/temp/proDet01.jpg" data-src="${path}/img/temp/proDet01_big.jpg">
						<img src="${path}/img/temp/proDet02.jpg" data-src="${path}/img/temp/proDet02_big.jpg">
						<img src="${path}/img/temp/proDet03.jpg" data-src="${path}/img/temp/proDet03_big.jpg">
						<img src="${path}/img/temp/proDet04.jpg" data-src="${path}/img/temp/proDet04_big.jpg">
					</div>
				</div>
				<div class="fl">
					<div class="proIntro change">
						<p>颜色分类</p>
						<div class="smallImg clearfix">
							<p class="fl on"><img src="${path}/img/temp/prosmall01.jpg" alt="白瓷花瓶+20支快乐花" data-src="img/temp/proBig01.jpg"></p>
							<p class="fl"><img src="${path}/img/temp/prosmall02.jpg" alt="白瓷花瓶+20支兔尾巴草" data-src="img/temp/proBig02.jpg"></p>
							<p class="fl"><img src="${path}/img/temp/prosmall03.jpg" alt="20支快乐花" data-src="img/temp/proBig03.jpg"></p>
							<p class="fl"><img src="${path}/img/temp/prosmall04.jpg" alt="20支兔尾巴草" data-src="img/temp/proBig04.jpg"></p>
						</div>
					</div>
					<div class="changeBtn clearfix">
						<a href="#2" class="fl"><p class="buy">确认</p></a>
						<a href="#2" class="fr"><p class="cart">取消</p></a>
					</div>
				</div>
			</div>
		</div>
		<div class="pleaseC">
			<p>请选择宝贝</p>
			<img class="off" src="img/temp/off.jpg" />
		</div>
		<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			function del(e) {
				if ($(e).parent().parent().hasClass("th")){
					var th = $(e).parent().parent();
					var productId = th.children(":first").children(":first").children().val();
					$.ajax({
						url:"${path}/delete4cart",
						type:"get",
						data:{productId:productId},
						success:function (res) {
							console.log(res);
							if (res.result){
								alert(res.result);
								th.remove();
								return;
							} else{
								alert(res.error);
								return;
							}
						}
					});
					return false;
				}else{
					if($(".th input[type='checkbox']:checked").length==0){
						alert("请选择商品");
					}else{
						var istrue = true;
						$(".th input[type='checkbox']:checked").each(function(j){
							var productId = $(this).val();
							var th = $(this).parent().parent().parent();
							console.log(productId);
							$.ajax({
								url:"${path}/delete4cart",
								type:"get",
								data:{productId:productId},
								success:function (res) {
									console.log(res);
									if (res.result){
										th.remove();
										return;
									} else{
										istrue = false;
										return;
									}
								}
							});

						if($(".th").length==0){
							$(".table .goOn").show();
						}
					});
						if (istrue){
							alert("删除成功");
							$(e).parent().next("p").children("span").children("small[id='all']").text("￥0.00");
							$(e).parent().next("p").children("span").children("small[id='sl']").text("0");
						}else{
							alert("删除失败");
						}

					}
				}
			}
			function action(e) {
				var th = $(e).parent().parent().parent();
				var action = $(e)[0].name;
				var span = $(e).parent().children("span");
				var productId = th.children(":first").children(":first").children().val();
				console.log(action);
				console.log(productId);
				var data = {
					productId:productId,
					action:action,
				}
				var text = $(e).parent().children("span").text();
				if(span.text() == 1 && action == "sub"){
					alert("当前数量，不可减少");
					return false;
				};
				$.ajax({
					url:"${path}/updatenum",
					type:"get",
					data:data,
					success:function (res) {
						if (res.add) {
							++text;
							span.text(text);
						}
						if (res.sub){
							--text;
							span.text(text);
					}
					}
				});
			}
			$(function () {
				$(".count").click(function () {
					var url = "${path}/order?"
					var inputs = $(".th input[type='checkbox']:checked");
					inputs.each(function () {
						console.log(this);
						url += "productId="+this.value+"&"
					});
					console.log(url);
					location = url;
				});
			})
		</script>
		<script src="${path}/js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/pro.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/cart.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>
