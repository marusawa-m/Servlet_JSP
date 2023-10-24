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


<style type="text/css">
h1 {
    color: #6594e0;/*文字色*/
  /*線の種類（点線）2px 線色*/
  border-bottom: dashed 2px #6594e0;
}
</style>

<link rel="stylesheet" type="text/css" href="style.css">
<%-- <style>/* ページ全体の背景色を設定 */

</style> --%>

</head>
<body>

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
		<form action="Main" method="post" class="my-form">
	
		<%-- BMI測定 --%>
		身長:<input type="text" name="height">　<span class="this">(cm/ 例:160.1)</span>
		<br>
		体重:<input type="text" name="weight">　<span class="this">(kg/ 例:65.3)</span>
		<br>
		
		<p>体調:
	    <input type="radio" name="healthRating" value="very good">良い
	    <input type="radio" name="healthRating" value="good">普通
	    <input type="radio" name="healthRating" value="bad">悪い</p>
	    
		メモ欄:
		<input type="text" name="text" >
		<br><br>
		<input type="submit" value="投稿">	　<input type="reset" value="リセット"></p>
		</form>
</p>	
   
		

</body>
</html>