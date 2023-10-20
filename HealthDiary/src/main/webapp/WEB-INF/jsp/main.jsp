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
<title>毎日の健康日記</title>
</head>
<body>

<h1>メイン</h1>

<p>
	<%= loginUser.getName() %> さん、ログイン中
	<br><br>
	<a href="LogoutServlet">LOGOUT</a>　<a href="Main">更新</a>
</p>
	
		<form action="Main" method="post">
	
		<%-- BMI測定 --%>
		身長:<input type="text" name="height">(cm/ 例:160.1)
		<br>
		体重:<input type="text" name="weight">(kg/ 例:65.3)
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
		
   
		

</body>
</html>