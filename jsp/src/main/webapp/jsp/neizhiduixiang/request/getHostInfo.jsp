<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>getHostInfo.jsp</title>
</head>
<body>
	<p>
		本地机器IP:<%=request.getLocalAddr() %><br>
		本地机器名称：<%=request.getLocalName() %><br>
		本地机器端口：<%=request.getLocalPort() %><br>
	</p>
	<p>
		客户主机IP:<%=request.getRemoteAddr() %><br>
		客户主机名称:<%=request.getRemoteHost() %><br>
		客户主机端口：<%=request.getRemotePort() %><br>
	</p>
	<p>
		服务器IP:<%=request.getServerName() %><br>
		服务器端口：<%=request.getServerPort() %><br>
	</p>
</body>
</html>