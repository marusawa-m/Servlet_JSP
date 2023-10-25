<%-- 新規登録完了画面ビュー --%>

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

	<h1>ウェルカム <%= registerUser.getName() %> !</h1>
	
	<br>
	
	<p>TOPページからログインしてお楽しみください！</p>
	
	<br>
	
	<a href="index.jsp" class="btn-partial-line">
	  <i class="fa fa-caret-right"></i>TOP</a>


</body>
</html>