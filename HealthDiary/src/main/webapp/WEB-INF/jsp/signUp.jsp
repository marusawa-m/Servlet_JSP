<%-- 新規登録画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.RegisterUserLogic" %>
    
    
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
	
	<input type="submit" value="チェック"></p>
		
	</form>
</body>
</html>