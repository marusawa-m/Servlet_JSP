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


<link rel="stylesheet" type="text/css" href="style.css">


</head>
<body>

<div class="my-form">

<h1>ヒストリー</h1>
<p>
		<% for (Mutter mutter : mutterList) { %>
		 <div class="balloon5">
      <div class="faceicon">
        <img alt="アイコン" src="images/bmi.jpg">
      </div>
      <div class="chatting">
        <div class="says">
		<p><%= mutter.getText() %></p>
		
		<hr> <!-- ここで横線を挿入 -->
				
		<p>今の体調：<%= mutter.getHealthRating() %>
		 ｜ BMI：<%= String.format("%.1f",mutter.getBmi()) %>（体型：<%= mutter.getBodyType() %>）</p>

		<p><%= mutter.getSdf() %> ｜ <%= mutter.getUserName() %></p>
		</div></div></div>
		<% } %>

		
		
</p>

<a href="Main" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>main</a>

</div>
</body>
</html>