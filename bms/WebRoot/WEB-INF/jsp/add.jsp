<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="dept!add.action" method="post">
			  所在部门：<input type="text" name="dname"/><br/>
			  部门所在城市：<input type="text" name="loc"/><br/>
			  <input type="submit" value="提交"/>
		</form>
		<br/>
		<a href="list.action">列表显示</a>
	</body>
</html>