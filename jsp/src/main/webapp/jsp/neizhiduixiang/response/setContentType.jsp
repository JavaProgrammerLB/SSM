<%
	response.setContentType("text/html;charset=UTF-8");
	String str = new String("这是测试例子".getBytes("ISO-8859-1"), "utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>setContentType.jsp</title>
</head>
<body>
	<p>这里是一段中文字符</p>
	<br>
	<%=str %>
</body>
</html>