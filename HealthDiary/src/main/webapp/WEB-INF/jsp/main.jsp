 <%-- メイン画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="model.User, model.Mutter, model.Health, java.util.List" %>
    
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
	<a href="LogoutServlet">LOGOUT</a>
</p>
	<p><a href="Main">更新</a></p>
	
		<%-- BMI測定 --%>
		身長:<input type="text" name="height">(cm)
		<br>
		体重:<input type="text" name="weight">(kg)
		<br>
		
		<%-- 体調の評価ボタンをここに入れる --%>
	
		<%-- 以下メモ欄 --%>
		メモ欄:
		<form action="Main" method="post">
		<textarea name="example5" cols="30" rows="5" tabindex="1"></textarea>
		<input type="submit" value="確認">
		</form>
		<% for (Mutter mutter : mutterList) { %>
		<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
		<%} %>

</body>
</html>