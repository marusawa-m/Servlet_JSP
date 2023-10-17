 <%-- メイン画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="model.User" %>
    
    <%-- セッションスコープに保存されたユーザー情報を取得 --%>
    <% User loginUser = (User) session.getAttribute("loginUser"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>毎日の健康日記</title>
</head>
<body>

<h1>メイン</h1>

<p>
	<%= loginUser.getName() %> さん、ログイン中
	
	<a href="LogoutServlet">LOGOUT</a>
</p>

</body>
</html>