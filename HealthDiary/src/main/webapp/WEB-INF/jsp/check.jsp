<%-- 入力の確認画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.Mutter, model.Health, java.util.List, java.text.SimpleDateFormat" %>
    
    <%-- セッションスコープに保存されたユーザー情報を取得 --%>
    <% User loginUser = (User)session.getAttribute("loginUser"); %>
    <%-- アプリケーションスコープに保存された投稿リストを取得 --%>
    <% List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList"); %>

    
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

<h1>ヒストリー</h1>
<p>
		<% for (Mutter mutter : mutterList) { %>
		<p><div class="balloon4">
		<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
		
		<p>BMI: <%= String.format("%.1f",mutter.getBmi()) %> 体型: <%= mutter.getBodyType() %></p>
		
		<p>体調評価: <%= mutter.getHealthRating() %></p>
		
		<p><%= mutter.getSdf() %></p>
		<p></p></div>
		<% } %>

		
		
</p>

<a href="Main" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>main</a>

</body>
</html>