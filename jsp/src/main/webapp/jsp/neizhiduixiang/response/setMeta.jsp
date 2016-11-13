<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>setMeta.jsp</title>
</head>
<body>
	<center class="aa">
		<p class="bb">
			现在的时间为：<br>
			<%
				out.print("" + new Date());
				response.setHeader("refresh", "1");
				response.setHeader("description", "实时的现实当前时间");
				response.setHeader("keywords","实时，显示，显式当前时间");
				response.setHeader("cache-control", "no-cache");
			%>
			<br>
			<br>
			copyright:2016
	</center>
</body>
</html>