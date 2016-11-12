<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getHeader.jsp</title>
</head>
<body>
	<%
		Enumeration<String> enumeration = request.getHeaderNames();
		while(enumeration.hasMoreElements()){
			String name = enumeration.nextElement();
			String value = request.getHeader(name);
			if(value == null || "".equals(value)){
				value="空字符串";
			}
	%>
		<p>表头名称：<%=name %>&nbsp&nbsp;对应的值为：<%=value %></p>
	<%
		}
	%>
</body>
</html>