<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html lang="en" >

<head>
<meta charset="UTF-8">
<title>Sadia正品鞋城</title>

<!--图标样式-->
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css'>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<script type="text/javascript" src="${path}/static/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {

            $("#zzq").click(function () {
                var data = $("form[id='login']").serialize();
                console.log(data);
                $.ajax({
                    url:"${path}/login",
                    type:"post",
                    data:data.toString(),
                    success:function (res) {
						console.log(res.uri);
                        if (res.result){
                        	alert("登陆成功");
                            if (res.uri){
                                location = res.uri;
                            }else{
								location = "${path}/index";
							}
						} else{
                            alert(res.error);
                        }
                    }
                });
                return false;
            });
        });
        $(function () {
            $("#zzz").click(function () {
                var data = $("form[id='reginst']").serialize();
                $.ajax({
                    url:"${path}/register",
                    type:"post",
                    data:data,
                    success:function (res) {
                        if (res.result){
                        	alert("注册成功，已登录！");
                            location = "${path}/index";
                        } else{
                            alert(res.error);
                        }
                    }
                });
                return false;
            });
        });
    </script>


</head>

<body>

  <h2>登录/注册</h2>
<div class="container" id="container">
	<div class="form-container sign-up-container">
		<form action="${path}/register" method="post" id="reginst">
			<h1>注册</h1>
			<input type="text" name="userName" placeholder="用户名" />
			<input type="text" name="phone" placeholder="手机号" />
			<input type="password" name="password" placeholder="密码" />
			<button id="zzz" type="submit">注册</button>
		</form>
	</div>
	<div class="form-container sign-in-container">
		<form action="${path}/login" method="post" id="login">
			<h1>登录</h1>
			<input type="text" name="username" placeholder="用户名" />
			<p></p>
			<input type="password" name="password" placeholder="密码" />
			<c:if test="${param.uri != null}">
				<input type="hidden" name="uri" value="${param.uri}" />
			</c:if>
			<p></p>
			<a href="#">忘记密码？</a>
			<button id="zzq" type="submit">登录</button>
		</form>
	</div>
	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1>欢迎回来！</h1>
				<p>请您先登录的个人信息，进行操作。</p>
				<button class="ghost" id="signIn">登录</button>
			</div>
			<div class="overlay-panel overlay-right">
				<h1>你好朋友！</h1>
				<p>输入您的个人信息注册成为会员。</p>
				<button class="ghost" id="signUp">注册</button>
			</div>
		</div>
	</div>
</div>

  <script  src="${path}/static/js/login.js"></script>

</body>

</html>
