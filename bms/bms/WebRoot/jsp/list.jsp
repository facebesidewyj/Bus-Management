<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>人员列表</h1>
		<a href="add.jsp">人员添加</a><br/>
		<table>
			<tr>
				<td>编号</td>
				<td>部门</td>
				<td>城市</td>
				<td></td>
				<td></td>
			</tr>
			<s:iterator value="list">
				<tr>
					<td>${id }</td>
					<td>${dname }</td>
					<td>${loc }</td>
					<td>
						<a href="dept!delete.action?dept.id=${id}" onclick="return confirm('确认要删除吗？')">删除</a>
					</td>
					<td>
						<a href="dept!init.action?dept.id=${id}">更新</a>
					</td>
				</tr>
			</s:iterator>
		</table>
<	/body>
</html>