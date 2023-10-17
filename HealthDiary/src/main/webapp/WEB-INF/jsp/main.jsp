 <%-- メイン画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="model.User, model.Mutter, java.util.List" %>
    
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
		
		<form action="Main" method="post">
		<input type="text" name="text">
		<input type="submit" value="確認">
		</form>
		<% for (Mutter mutter : mutterList) { %>
		<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
		<%} %>

</body>
</html>