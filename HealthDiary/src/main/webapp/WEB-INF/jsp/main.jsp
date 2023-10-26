 <%-- メイン画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="model.User, model.Mutter, model.Health, java.util.List" %>
    
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

<div class="my-form"><div class="content">

<h1>メイン</h1>

<p>
	<p>ようこそ <%= loginUser.getName() %> さん！</p>
	
	<br>
	
　<a href="LogoutServlet" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>LOGOUT</a>　
  
  <a href="Main" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>RELOAD</a>　
  
  <a href="Checkservlet" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>HISTORY</a>
</p>

<p>	
<br>
		<form action="Main" method="post" class="my-form2">
		    
		ひと言：
		<input type="text" name="text" >
		
		<p>今の体調：
	    <input type="radio" name="healthRating" value="very good">良い
	    <input type="radio" name="healthRating" value="good">普通
	    <input type="radio" name="healthRating" value="bad">悪い</p>
	    
		<%-- BMI測定 --%>
		身長：<input type="text" name="height">
		<p style="color: gray;">(cm/ 例:160.1)</p>
		体重：<input type="text" name="weight">
		<p style="color: gray;">(kg/ 例:65.3)</p>
	
		
		<input type="submit" value="投稿" class="btn-circle-forest">
			　<input type="reset" value="リセット" class="btn-circle-forest"></p>
		</form>
</p>	
   
		
</div></div>
</body>
</html>