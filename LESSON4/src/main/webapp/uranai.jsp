<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>

<%	// 運勢をランダムで決定 
	String [] luckArray = { "ウルトララッキー", "ラッキー", "アンハッピー" };
	int index = (int) (Math.random() * 3);
	String luck = luckArray[index];
	
	// 実行日を決定
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("MM月dd日");
	String today = sdf.format(date);
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>今日の占い</title>

</head>
<body>
<p>
	<%= today %> の運勢は「 <%= luck %> 」です
</p>
</body>
</html>