<%-- 入力の確認画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User, model.Mutter, model.Health, java.util.List" %>
    
    <%-- リクエストスコープに保存されたHealthインスタンスを取得 --%>
    <% Health health = (Health)request.getAttribute("health"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>健康日記 確認</title>
</head>
<body>

<h1>確認</h1>
<p>
		身長:
		<%= health.getHeight() %>
		<br>
		体重:
		<%= health.getWeight() %>
		<br>
		BMI:
		<%= String.format("%.1f",health.getBmi()) %>
		<br>
		体型:
		<%= health.getBodyType() %>
		
		// 体調評価の結果
		// 体温・メモの入力済
		
</p>

<a href="Main">return</a>

</body>
</html>