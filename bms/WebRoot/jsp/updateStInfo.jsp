<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>站点更新</title>
	</head>
	
	<body>
		<h1 align="center">站点更新</h1>
		<table align="center" width="500" border="1" cellspacing="0" cellpadding="1">
			<tr bgcolor="#FFFF99">
				<td height="291">
	   		 		<div align="center">
	   		 			<s:form action="stationAction_updateStation" namespace="/">
							<s:hidden name="id"/>
							<s:textfield name="stationName" label="站点名称" />
							<s:textfield name="stationOrder" label="站点序号"></s:textfield>
							<s:submit value="提交"></s:submit>
						</s:form>
					</div>
				</td>
	 		 </tr>
		</table>
	</body>
</html>