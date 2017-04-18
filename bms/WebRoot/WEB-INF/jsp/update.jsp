<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>信息更新</h1><br/>
		<s:form action="dept!update">
			<s:hidden name="dept.id"></s:hidden>
			<s:textfield name="dept.dname" label="用户所在部门"></s:textfield>
			<s:textfield name="dept.loc" label="所在城市"></s:textfield>
			<s:submit value="提交"></s:submit>
		</s:form>
	</body>
</html>