<%-- 登録の確認画面 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="model.User" %>
    
    <%-- リクエストスコープからユーザー情報を取得 --%>
    <% User loginUser = (User)request.getAttribute("loginUser"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ユーザー登録</title>
</head>
<body>

<%= errorMsg += "名前が入力されていません"; %>

</body>
</html>