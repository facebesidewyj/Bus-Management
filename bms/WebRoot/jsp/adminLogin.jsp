<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>adminLogin</title>
		<LINK href="${pageContext.request.contextPath}/css/my_domain/main.css" type=text/css rel=stylesheet>
	</head>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.4.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
	<script type="text/javascript">
		$(function(){
				$("#Verify").click(function(){
				$(this).attr("src","SecurityCodeImageAction?timestamp="+new Date().getTime());
			 });
			});
	</script>
	
	<body background="${pageContext.request.contextPath}/images/adminLogin.png">
		<table border=0 cellspacing=1 cellpadding=4  width="320" align="center" style="padding-top: 200px">
			<tr>
				<td>
					<font size="4" style="padding-left: 90px; color: lime; font-weight: bolder;">系统管理员登录</font>
				</td>
			</tr>
			<tr>
				<td>
					<s:form name="form1" action="adminAction_adminLogin" namespace="/">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" >
							<tr>
								<td width="15%">
									<font size="2" color="lime">用户名</font>
								</td>
								<td>
									<s:textfield name="username" size="30"/>
								</td>
							</tr>
							<tr>
								<td width="10%">
									<font size="2" color="lime">密&nbsp;&nbsp;&nbsp;码</font>
								</td>
								<td>
									<s:password name="password" size="30"/>
								</td>
							</tr>
							<tr>
								<font color="red">
									<s:fielderror/><s:actionerror/>
								</font>
							</tr>
							<tr>
								<td colspan="2" align="left" style="padding-left: 22px" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value="确定" name="submit"/>&nbsp;&nbsp;
									<input type="reset" value="重置" name="reset"/>
								</td>
							</tr>
						</table>
					</s:form>
				</td>
			</tr>
		</table>
	</body>
</html>
