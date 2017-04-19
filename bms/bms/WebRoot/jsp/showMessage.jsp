<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import = "java.util.*" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>留言板信息</title>
		<link href="${pageContext.request.contextPath}/css/my_domain/main.css" type="text/css" rel="stylesheet">
	</head>

	<body bgcolor="#CCCCFF">
		<table width="768" border="1" align="center" cellpadding="1" cellspacing="0" >
			<tr bgcolor="#DBECF8">
				<td width="72" align="center">留言编号</td>
				<td width="125" align="center">留言时间</td>
				<td width="146" align="center">留言人</td>
				<td width="127" align="center">留言主题</td>
				<td width="196" align="center">留言内容</td>
				<td width="76" align="center">操作</td>
			</tr>
			<s:iterator value="messageList">
				<tr>
					<td align="center"> <s:property value="id"/> </td>
					<td align="center"> <s:property value="msgTime"/> </td>
					<td align="center"> <s:property value="username"/> </td>
					<td align="center"> <s:property value="theme"/> </td>
					<td align="center"> <s:property value="message"/> </td>
					<td align="center">
						<a href="messageAction_deleteMessageById?id=${id}" onclick="return confirm('确认要删除吗？')">删除</a>
					</td>
				</tr>
			</s:iterator>
			<c:if test="${messageList==null}">
				<tr>
					<td colspan="7" align="center">
						<font color="#FF0000">对不起,没有消息!</font>
					</td>
				</tr>
			</c:if>
		</table>
		<a href="query.action">回到首页</a>
	</body>
</html>
