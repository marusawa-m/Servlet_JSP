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


<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<div class="my-form">

<h1>チェック</h1>

	<p>下記で登録しますか？</p>
	
	
	<p class="my-form2">user name：<%= registerUser.getName() %><br>
	password：<%= registerUser.getPass() %></p>
	
	<br><br>
	
	<a href="RegisterUser" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>>BACK</a>
  　　
	<a href="RegisterUser?action=done" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>>JOIN</a>
	
</div>
</body>
</html>