<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Insert title here</title>
		<style type="text/css">
			<!--
			.STYLE1 {color: #00CC33}
			.STYLE2 {color: #FF0000}
			.STYLE3 {font-size: 14px}
			-->
		</style>
	</head>
	
	<body  bgcolor="#CCCCFF">
		<center>
			<table style=" margin-top:40px;" width="600" border="1" cellspacing="0" cellpadding="1">
				<tr>
					<td colspan="7">
						<div align="center">
							<strong style="font-size:24px; color:#3333FF">人员信息列表</strong>
						</div>
					</td>
				</tr>
				<tr>
					<td width="60"><div align="center">编号</div></td>
					<td width="82"><div align="center">用户名</div></td>
					<td width="112"><div align="center">密码</div></td>
					<td width="72"><div align="center">地址</div></td>
					<td width="63"><div align="center">年龄</div></td>
					<td width="113"><div align="center">Email</div></td>
					<td width="68"><div align="center">操作</div></td>
				  </tr>
				<s:iterator value="#userList">
					<tr>
						<td>
							<div align="center" class="STYLE1 STYLE3"> <s:property value="id"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE1"> <s:property value="username"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE1"> <s:property value="password"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE1"> <s:property value="address"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE1"> <s:property value="age"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE1"> <s:property value="email"/> </div>
						</td>
						<td>
							<div align="center" class="STYLE2" >
								<s:a action="adminAction_deleteUserById" onclick="return confirm('确认要删除吗？')">
									<s:param name="id" value="id"></s:param>
									删除
								</s:a>
							</div>
						</td>
					</tr>
				</s:iterator>
			</table>
		</center>
	</body>
</html>