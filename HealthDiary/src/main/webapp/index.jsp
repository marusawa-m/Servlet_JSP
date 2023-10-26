<%-- トップ画面を出力するビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>


<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<div class="my-form">
<div class="content">

<h1>Health Diary</h1>
  
  <br>

	<form action="Login" method="post">
	
		<p>user name：<input type="text" name="name"></p>
		
		<p>password：<input type="password" name="pass"></p>
		
		<br>
		
		<p><a href="RegisterUser" class="btn-partial-line">
 		 <i class="fa fa-caret-right"></i>新規登録はこちら</a>
  
		　　<input type="submit" value="ログイン" class="btn-circle-forest"></p>
	</form>
</div></div>
</body>
</html>