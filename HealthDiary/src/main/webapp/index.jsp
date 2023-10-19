<%-- トップ画面を出力するビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthDiary</title>
</head>
<body>

<h1>毎日の健康日記</h1>

	<form action="Login" method="post">
		ユーザー名：<input type="text" name="name">
		<br>
		パスワード：<input type="password" name="pass">
		<br>
		<input type="submit" value="ログイン">
	</form>

</body>
</html>