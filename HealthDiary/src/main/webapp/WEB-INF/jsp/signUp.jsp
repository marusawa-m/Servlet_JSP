<%-- 新規登録画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.RegisterUserLogic" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>
</head>
<body>

<h1>新規登録</h1>

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
	

	<form action="RegisterUser" method="post">
	ユーザー名：<input type="text" name="name">
		<br>
		パスワード：<input type="password" name="pass">
		<br>
		<input type="submit" value="確認">	
	</form>
</body>
</html>