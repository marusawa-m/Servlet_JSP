<%-- トップ画面を出力するビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>

<style type="text/css">
input:focus {
  background-color: #ddd;
}

h1 {
   color: #6594e0;/*文字色*/
  /*線の種類（点線）2px 線色*/
  border-bottom: dashed 2px #6594e0;
}
</style>

<link rel="stylesheet" type="text/css" href="style.css">

</head>
<body>

<h1>Health Diary</h1>
  
  <br>

	<form action="Login" method="post">
	
		<p>user name：<input type="text" name="name"></p>
		
		<p>password：<input type="password" name="pass"></p>
		
		<br>
		
		<p><a href="RegisterUser" class="btn-partial-line">
 		 <i class="fa fa-caret-right"></i>サインアップはこちら</a>
  
		　　<input type="submit" value="ログイン" ></p>
	</form>

</body>
</html>