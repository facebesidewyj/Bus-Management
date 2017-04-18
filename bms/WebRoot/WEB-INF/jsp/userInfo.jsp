<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ page import = "java.util.*" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>用户信息</title>
		<link href = "css/home.css" rel = "stylesheet" type = "text/css"/>
		<link href = "css/style.css" rel = "stylesheet" type = "text/css"/>
		<link href = "css/theme.css" rel = "stylesheet" type = "text/css" media = "all" title = "Aqua"/>
	</head>
	
	<body>
		<table bgcolor="#EEFCEE" width="601" border="1" align="center" cellpadding="1" cellspacing="0" bordercolor="#ffffff">
			<tr>
				<td align="center" height="50"><strong style="font-size:30px; color:#00CC66">用户信息</strong></td>
			</tr>
			<tr>
				<td width="600" height="300">
					<div align="center">
						<s:form action="userAction_updateUser" namespace="/">
							<s:hidden name="id"></s:hidden>
						<table>
							<tr>
								<td>用户名</td>
								<td>密码</td>
								<td>地址</td>
								<td>年龄</td>
								<td>邮箱</td>
							</tr>
							<tr>
								<td>
									<s:textfield name="username" label="用户名" />
								</td>
								<td>
									<s:password name="password" label="密码" showPassword="true"/>
								</td>
								<td>
									<s:textfield name="address" label="地址"/>
								</td>
								<td>
									<s:textfield name="age" label="年龄"/>
								</td>
								<td>
									<s:textfield name="email" label="邮箱"/>
								</td>
							<tr>
						</table>
							<s:submit value="保   存"/>
						</s:form>
					</div>
				</td>
			</tr>
		</table>
	</body>
</html>