<%-- ログイン画面のビュー --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User" %>
    
    <%-- セッションスコープからユーザー情報を取得 --%>
    <% User loginUser = (User)session.getAttribute("loginUser"); %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>毎日の健康日記</title>
</head>
<body>

<h1>ログイン</h1>


    <p>ログインに成功しました</p>
    <p>ようこそ <%= loginUser.getName() %> さん</p>
    <a href ="Main">今日の健康を投稿する</a>


</body>
</html>