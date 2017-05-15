<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css" />
		<style type="text/css">
			.download{margin:20px 33px 10px;*margin-bottom:30px;padding:5px;border-radius:3px;-webkit-border-radius:3px;-moz-border-radius:3px;background:#e6e6e6;border:1px dashed #df0031;font-size:14px;font-family:Comic Sans MS;font-weight:bolder;color:#555}
			.download a{padding-left:5px;font-size:14px;font-weight:normal;color:#555;text-decoration:none;letter-spacing:1px}
			.download a:hover{text-decoration:underline;color:#36F}
			.download span{float:right}
		</style>
	</head>

	<body>
		<div class="main">
			<div class="header hide"> </div>
			<div class="content">
				<div class="title hide"></div>
				<s:form name="login" action="userAction_login">
					<fieldset>
						<font color="#ff0000" style="left: 45%; top: 51%; position: absolute;"> <s:fielderror/></font>
						<div class="input">
							<s:textfield cssClass="input_all name" name="username"  id="name" placeholder="用户名" onfocus="this.className='input_all name_now';" onblur="this.className='input_all name'" maxLength="24"/>
						</div>
						<div class="input">
							<s:password cssClass="input_all password" name="password" placeholder="密码"  id="password" onfocus="this.className='input_all password_now';" onblur="this.className='input_all password'" maxLength="24"/>
						</div>
						<div class="enter">
							<input class="button1 hide" name="submit" type="submit" value="登录" />
							<input class="button2 hide" name="reset" type="reset" value="重置" /> 
							<a class="register" href="${pageContext.request.contextPath}/userAction_toRegister"></a> 
						</div>
					</fieldset>
				</s:form>
			</div>
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/placeholder.js"></script>
	</body>
</html>
