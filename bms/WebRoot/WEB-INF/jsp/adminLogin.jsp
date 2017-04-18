<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>adminLogin</title>
		<LINK href="css/my_domain/main.css" type=text/css rel=stylesheet>
	</head>
	<script type="text/javascript" src="js/jquery-1.4.min.js"></script>
	<script type="text/javascript" src="js/jquery.validate.js"></script>
	<script type="text/javascript">
		$(function(){
				$("#Verify").click(function(){
				$(this).attr("src","SecurityCodeImageAction?timestamp="+new Date().getTime());
			 });
			});
	</script>
	
	<body bgcolor="#E8F3F6">
		<table border=0 cellspacing=1 cellpadding=4  width="768" align="center" bgcolor="#E8F3F6">
			<tr>
				<td>系统管理员登录</td>
			</tr>
			<tr>
				<td>
					<s:form name="form1" action="adminAction_adminLogin" namespace="/">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" >
							<tr>
								<td width="10%">管理员名</td>
								<td>
									<s:textfield name="username" size="30"/>
								</td>
							</tr>
							<tr>
								<td width="10%">密码</td>
								<td>
									<s:password name="password" size="33"/>
								</td>
							</tr>
							<tr>
								<font color="red">
									<s:fielderror/><s:actionerror/>
								</font>
							</tr>
							<tr>
								<td colspan="2" align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<input type="submit" value = "确定" name = "submit"/>&nbsp;&nbsp;
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
