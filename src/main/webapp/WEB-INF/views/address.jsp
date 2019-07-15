<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head lang="en">
	<meta charset="utf-8" />
	<title>地址管理</title>
	<link rel="stylesheet" type="text/css" href="${path}/css/public.css"/>
	<link rel="stylesheet" type="text/css" href="${path}/css/mygxin.css" />
    <script src="${path}/static/js/city.js" type="text/javascript" charset="utf-8"></script>
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
				<a href="${path}/myxin">个人中心</a>
				<span>/</span>
				<a href="${path}/address" class="on">地址管理</a>
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
							<li><a href="${path}/myprod">评价晒单</a></li>
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
					<h2>收货地址</h2>
					<div class="add">
						<div>
							<a href="#2" id="addxad"><img src="img/jia.png"/></a>
							<span>添加新地址</span>
						</div>
                        <c:forEach items="${requestScope.list}" var="address" >
                            <div class="dizhi">
                                <input name="addressId" type="hidden" value="${address.adressId}">
                                <p>${address.name}</p>
                                <p>${address.contact}</p>
                                <p>${address.province} ${address.city} ${address.county}</p>
                                <p>${address.adress}（${address.code}）</p>
                                <p class="addp"><a href="#" onclick="modify(this)"  class="modify">修改</a><a href="#" class="deladd">删除</a></p>
                            </div>
                        </c:forEach>
						<%--<div class="dizhi">
							<p>六六六</p>
							<p>1573****666</p>
							<p>河北省 唐山市 路北区</p>
							<p>唐山市大学生公寓村（063000）</p>
						</div>
						<div class="dizhi">
							<p>六六六</p>
							<p>1573****666</p>
							<p>河北省 唐山市 路北区</p>
							<p>唐山市大学生公寓村（063000）</p>
						</div>--%>
					</div>
				</div>
			</div>
		</div>
		<!--编辑弹框-->
		<!--遮罩-->
		<div class="mask"></div>
		<div class="adddz">
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
					<input id="btn-add" type="button" value="保存" />
					<input type="button" value="取消" />
				</div>
			</form>
		</div>
        <div class="readd">
            <form action="#" method="get">
                <input name="name" type="text" placeholder="姓名" class="on" />
                <input name="contact" type="text" placeholder="手机号" />
                <div class="city">
                    <select class="province" name="province" onclick="pro()" onchange="selectCityByPid(this)">
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
			<a href="cart.jsp">
			<dl>
				<dt><img src="img/gt1.png"/></dt>
				<dd>去购<br />物车</dd>
			</dl>
			</a>
			<a href="#" class="dh">
			<dl>
				<dt><img src="img/gt2.png"/></dt>
				<dd>联系<br />客服</dd>
			</dl>
			</a>
			<a href="mygxin.jsp">
			<dl>
				<dt><img src="img/gt3.png"/></dt>
				<dd>个人<br />中心</dd>
			</dl>
			</a>
			<a href="#" class="toptop" style="display: none">
			<dl>
				<dt><img src="img/gt4.png"/></dt>
				<dd>返回<br />顶部</dd>
			</dl>
			</a>
			<p>400-800-8200</p>
		</div>
		<script src="${path}/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/public.js" type="text/javascript" charset="utf-8"></script>
		<script src="${path}/js/user.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
           $(function () {
               for (var province in citys[100000]){
                   // console.log(province);
                   // console.log(citys[100000][province]);
                   var name = citys[100000][province];
                   $(".province").append("<option value=\"" + province + "\">"+name+"</option>");
               }
           });
           function pro() {
			   $(".province").empty();
			   for (var province in citys[100000]){
				   // console.log(province);
				   // console.log(citys[100000][province]);
				   var name = citys[100000][province];
				   $(".province").append("<option value=\"" + province + "\">"+name+"</option>");
			   }
		   }
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
            function modify(e){
				var addressId = $(e).parent().parent().children("input[name='addressId']").val();
				console.log(addressId);
				$.ajax({
					url:"${path}/address",
					type:"post",
					data:{addressId:addressId},
					success:function (res) {
						if (res.success){
							console.log(res.success);
							$(".readd").children().children("input[name='name']").val(res.success.name);
							$(".readd").children().children("input[name='contact']").val(res.success.contact);
							$(".province").empty();
							$(".province").append("<option value=\"" + '城市/地区' + "\">"+res.success.province+"</option>")
							$(".citys").empty();
							$(".citys").append("<option value=\"" + '城市/地区' + "\">"+res.success.city+"</option>")
							$(".county").empty();
							$(".county").append("<option value=\"" + '城市/地区' + "\">"+res.success.county+"</option>")
							$(".readd").children().children("textarea[name='adress']").val(res.success.adress);
							$(".readd").children().children("input[name='code']").val(res.success.code);
						}
					}
				});
			}
            $(function () {
                $("#btn-add").click(function () {
                    var form = $(this).parent().parent();
                    var name = form.children("input[name='name']").val();
                    var contact = form.children("input[name='contact']").val();
                    var province = form.children(".city").children("select[name='province']").children(":selected").text();
                    var city = form.children(".city").children("select[name='city']").children(":selected").text();
                    var county = form.children(".city").children("select[name='county']").children(":selected").text();
                    var adress = form.children("textarea").val();
                    var code = form.children("input[name='code']").val();
                    var data = {
                        name:name,
                        contact:contact,
                        province:province,
                        city:city,
                        county:county,
                        adress:adress,
                        code:code
                    };
                    $.ajax({
                        url:"${path}/add2adress",
                        type:"get",
                        data:data,
                        success:function (res) {
                            if (res.success === true){
                                alert("添加地址成功");
                                location.reload();
                            }else{
                                alert("添加地址失败");
                            }
                        }
                    });
                });
            });
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
        </script>
	</body>
</html>
