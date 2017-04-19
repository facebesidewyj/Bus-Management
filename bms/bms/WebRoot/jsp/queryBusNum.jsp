<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>公交线路查询</title>
	</head>
	
	<body bgcolor="#CCCCFF">
		<h3 style="left:200px; position:absolute; top:15px;">
			您所要查找的线路是：${busnum }路
		</h3>
		<table style="width:716px; left:200px; position:absolute; top:45px; ">
			<tr>
				<td align="left" width="100px;">
					起始点：
				</td>
				<td>
					<h4 style="font: '宋体'; color: #009933">
						${startSt.stName}
					</h4>
				</td>
				<td width="80px">
					终点站：
				</td>
				<td>
					<h4 style="font: '宋体'; color: #009933">
						${enSt.stName }
					</h4>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="line-height:25px;">
					${sb }
				</td>
			</tr>
			<tr>
				<td align="center">
					<form action="query.action" method="post">
						<input type="submit" value="返  回"/>
					</form>
				</td>	
			</tr>
		</table>
	</body>
</html>