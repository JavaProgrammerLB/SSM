<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>form1.jsp</title>
</head>
<body>
	<center>
		<form action="getParameter.jsp" method="get">
			<table>
				<tr>
					<td>姓名</td>
					<td><input type="text" name="name" value=""/></td>
				</tr>
				<tr>
					<td>城市</td>
					<td><input type="text" name="city"/></td>
				</tr>
				<tr>
					<td><input type="submit" value="提交"/></td>
					<td><input type="reset" value="重置"/></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>