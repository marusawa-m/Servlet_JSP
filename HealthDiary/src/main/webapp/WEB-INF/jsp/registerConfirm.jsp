<%-- 新規登録確認画面ビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User" %>
    
    <% User registerUser = (User)session.getAttribute("registerUser"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>

<style type="text/css">
h1 {
    color: #6594e0;/*文字色*/
  /*線の種類（点線）2px 線色*/
  border-bottom: dashed 2px #6594e0;
}
</style>

<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<h1>チェック</h1>

	<p>下記で登録しますか？</p>
	
	
	<p class="my-form">user name:<%= registerUser.getName() %><br>
	password:<%= registerUser.getPass() %></p>
	
	<br>
	
	<a href="RegisterUser" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>>BACK</a>
  　　
	<a href="RegisterUser?action=done" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>>JOIN</a>
	

</body>
</html>