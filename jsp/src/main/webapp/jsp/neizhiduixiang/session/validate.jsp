<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>validate.jsp</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires"	content="0">
	<meta http-equiv="keywords" content="keyword1, keyword2, keyword3">
</head>
	<%!
		// 声明一个用户集合，模拟从数据库中取出数据集
		Map<String, String> map = new HashMap<String, String>();
		// 声明验证的标识
		boolean flag = false;
	%>
	<%
		// 向集合添加数据
		map.put("John", "123456");
		map.put("Smith", "222222");
		map.put("Bob", "333333");
		map.put("Bruth", "666666");
		map.put("admin", "123456");
	%>
	<%!
		// 声明验证方法
		boolean validate(String username, String password){
			String passwd = map.get(username);
			if(passwd != null && passwd.equals(password)) return true;
			else return false;
		}
	%>
	<%
		// 获取从页面提交的用户名与密码
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(username == null || "".equals(username) || password == null || "".equals(password)) response.sendRedirect("login.jsp");
		flag = validate(username, password);
		if(flag){
			// 将用户保存到Session对象中
			session.setAttribute("username", username);
			session.setAttribute("password", password);
			response.sendRedirect("class.jsp");
		}
	%>
<body>
	<center>
		<font size="6">用户登录</font>
	</center>
	<center>
		<%if(!flag){%>
			<a href="login.jsp">重新登录系统</a>
		<%} %>
	</center>
</body>
</html>