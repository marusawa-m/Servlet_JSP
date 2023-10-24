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

<h1>ログイン</h1>


    <p>ログインに成功しました</p>
    <p>ようこそ <%= loginUser.getName() %> さん</p>
    <a href ="Main" class="btn-partial-line">
  <i class="fa fa-caret-right"></i>今日の健康を投稿する</a>


</body>
</html>