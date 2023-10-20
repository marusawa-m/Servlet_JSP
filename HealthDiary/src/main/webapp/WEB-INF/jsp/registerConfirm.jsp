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
</head>
<body>

<h1>新規登録　確認</h1>

	<p>下記のユーザーを登録します</p>
	<p>
	ユーザー名:<%= registerUser.getName() %><br>
	パスワード:<%= registerUser.getPass() %><br>
	</p>
	
	<a href="RegisterUser">戻る</a>
	<a href="RegisterUser?action=done">登録</a>
	

</body>
</html>