<%-- 入力の確認画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.Mutter, model.Health, java.util.List, java.text.SimpleDateFormat" %>
    
    <%-- セッションスコープに保存されたユーザー情報を取得 --%>
    <% User loginUser = (User)session.getAttribute("loginUser"); %>
    <%-- アプリケーションスコープに保存された投稿リストを取得 --%>
    <% List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList"); %>
    <%-- 投稿する日付を取得 --%>
    <% SimpleDateFormat date = new SimpleDateFormat("yy:MM:dd"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>健康日記 確認</title>
</head>
<body>

<h1>確認</h1>
<p>
		<% for (Mutter mutter : mutterList) { %>
		
		<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
		
		<p>BMI: <%= String.format("%.1f",mutter.getBmi()) %> 体型: <%= mutter.getBodyType() %></p>
		
		<p>体調評価: <%= mutter.getHealthRating() %></p>
		
		<p><%= date %></p>
		
		<% } %>

		
		
</p>

<a href="Main">main</a>

</body>
</html>