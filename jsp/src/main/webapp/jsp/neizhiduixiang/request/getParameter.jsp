<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getParameter.jsp</title>
</head>
<body>
	<center>
		<% 
			request.setCharacterEncoding("utf-8");
			String name = request.getParameter("name");
			name = new String(name.getBytes("ISO-8859-1"),"utf-8");
			String city = request.getParameter("city");
			city = new String(city.getBytes("ISO-8859-1"),"utf-8");
			if(name != null && city != null){
		%>
			<p>Welcome <%=name %>, 您所在的城市是：<%=city %></p>
		<%
			}else{
		%>
			<p>欢迎访问本页面</p>
		<%
			}
		%>
	</center>
</body>
</html>