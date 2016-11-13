<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = (String)session.getAttribute("username");
	if(name == null || "".equals(name)){
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires"	content="0">
	<meta http-equiv="keywords" content="keyword1, keyword2, keyword3">
	<meta http-equiv="description" content="This is my page">
</head>
<body>
	<center>
		<font siez="5">班级管理</font>
		<hr>
		<h3>学生：<%=name %></h3>
		<table>
			<tr>
				<td>
					<a href="addClass.jsp">班级录入</a>
				</td>
				<td>
					<a href="modifyClass.jsp">班级修改</a>
				</td>
				<td>
					<a href="queryClass.jsp">班级查询</a>
				</td>
				<td>
					<a href="delClass.jsp">班级删除</a>
				</td>
			</tr>
		</table>
		<a href="logout.jsp">退出登录</a>
	</center>
</body>
</html>