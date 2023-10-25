<%-- 新規登録画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.RegisterUserLogic" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>


<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<div class="my-form">

<h1>サインアップ</h1>

<%-- エラーメッセージがある場合に表示 --%>
<% 
    String errorMsg = "";
    RegisterUserLogic logic = new RegisterUserLogic();

    if (request.getAttribute("errorMsg") != null) {
        errorMsg = (String) request.getAttribute("errorMsg");
    }
%>
<% if (!errorMsg.isEmpty()) { %>
    <p style="color: red;"><%= errorMsg %></p>
<% } %>
	
	<br>
	
	<form action="RegisterUser" method="post">
	
	<p>user name：<input type="text" name="name"></p>
		
	<p>password：<input type="password" name="pass">
	<span class="this">※半角英数字4桁</span></p>
	
	<br>
	
	<input type="submit" value="チェック" class="btn-circle-forest"></p>
		
	</form>
	</div>
</body>
</html>