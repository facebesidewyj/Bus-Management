<%@ page contentType="text/html; charset=UTF-8" language="java"
	errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>用户注册</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=UTF-8">
		<STYLE type=text/css>
			BODY {
			FONT-SIZE: 12px;
			COLOR: #000000
		}

		TD {
			FONT-SIZE: 12px;
			COLOR: #000000
		}
		.STYLE1 {
			FONT-WEIGHT: bold;
			FONT-SIZE: 11pt;
			COLOR: #019867;
			FONT-FAMILY: "宋体"
		}
		.STYLE2 {
			FONT-WEIGHT: bold;
			FONT-SIZE: 11pt;
			COLOR: #666666;
			FONT-FAMILY: "宋体"
		}
		.STYLE6 {
			COLOR: #ff0000
		}
		P {
			LINE-HEIGHT: 130%
		}
		</STYLE>

		<script type="text/javascript" src="js/jquery-1.4.min.js"></script>
		<script type="text/javascript" src="js/jquery.validate.js"></script>
		<script type="text/javascript" language="javascript">
			$(function(){
				$("#f").validate(
				{
					rules: {
						"username":{required:true,minlength:4,maxlength:20},
						"email":{required:true,email:true},
						"address":{required:true,minlength:4,maxlength:20},
						"password":{required:true,minlength:5,maxlength:12},
						"repassword":{required:true,equalTo:"#txtPassword"},
						"securityCode":{required:true},
					},
					messages: {
						"username":{required:"用户名不能为空！",minlength:jQuery.format("长度少于4"),maxlength:jQuery.format("长度最多20字符")},
						"email":{required:"邮箱不能为空！",email:"Email格式不正确！"},
						"address":{required:"地址不能为空",minlength: jQuery.format("长度少于4"),maxlength: jQuery.format("长度太长")},
						"password":{required:"密码不能为空",minlength: jQuery.format("密码长度小了"),maxlength: jQuery.format("密码长度最多是 20字符串")},
						"repassword":{required:"确认密码不能为空！",equalTo:"确认密码和密码不一致！"},
						"securityCode":{required:"验证码不能为空！"},
					},
					errorPlacement: function(error,element){
						error.appendTo(element.next().find("span"));
					}
				});
			});
			$(function () {  
				//点击图片更换验证码
				$("#Verify").click(function(){
				$(this).attr("src","securityCodeImageAction_showSecurityCode?timestamp="+new Date().getTime());
				});
			});
		</script>
		<META content="MSHTML 6.00.2900.3059" name=GENERATOR>
	</HEAD>
	
	<BODY bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
		<s:form namespace="/" action="userAction_register" id="f">
			<center>
				<table bgcolor="" width="580" height="186" border="0"
					cellpadding="0" cellspacing="8">
					<tr>
						<td colspan="2">
							<img height="43" src="images/318_logo.gif" width="165" />
						</td>
					</tr>
					<tr>
						<td>&nbsp;
							
						</td>
						<td width="454" align="right">
							<EM><FONT color=#ff0000>*号为必填项，请认真填写</FONT> </EM>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<span class=STYLE1>基本选项</span>
						</td>
					</tr>
					<tr bgcolor="#eafce6">
						<td width=102>
							<font color=#cc0000>*</font> 用 户 名：
						</td>
						<td>
							<s:textfield name="username" maxlength="20" size="20" cssStyle="float: left; margin-top: 9px;"/>
							<div class=STYLE5 style="float: left; padding-left: 20px; word-break: break-all;">
								<p>
									用户名长度4-20位
								</p>
								<span id="username.info" style="color: red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<font color=#cc0000>*</font> 密 码：
						</td>
						<td>
							<s:password showPassword="true" name="password" id="txtPassword" cssStyle="float: left; margin-top: 9px;" maxlength="20" size="20"/>
							<div class=STYLE5 style="float: left; padding-left: 20px; word-break: break-all;">
								<p>
									请使用6--15位
								</p>
								<span id="password.info" style="color: red"></span>
							</div>
						</td>
					</tr>
					<tr bgcolor="#eafce6">
						<td>
							<font color=#cc0000>*</font> 确认密码：
						</td>
						<td>
							<s:password name="repassword" cssStyle="float: left; margin-top: 9px;" maxlength="20" size="20"/>
							<div class=STYLE5 style="float: left; padding-left: 20px; word-break: break-all;">
								<p>
									请再输入一遍您上面填写的密码。
								</p>
								<span id="repassword.info" style="color: red"></span>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<font color=#cc0000>*</font> 地 &nbsp; 址：
						</td>
						<td>
							<s:textfield name="address" maxlength="20" size="20" cssStyle="float: left"/>
							<div style="float: left; padding-left: 20px; word-break: break-all;">
								<span id="address.info" style="color: red"></span>
							</div>
						</td>
					</tr>
					<tr bgcolor="#eafce6">
						<td>
							&nbsp;年&nbsp; 龄：
						</td>
						<td>
							<s:textfield name="age" maxlength="20" size="20" cssStyle="float: left"/>
							<span id="age.info" style="color: red"></span>
						</td>
					</tr>
				</table>
				<TABLE height=10 width=580 border=0>
					<TBODY>
						<TR>
							<TD></TD>
						</TR>
					</TBODY>
				</TABLE>
				<table width="580" border="0" cellspacing="8" cellpadding="0">
					<tr>
						<td colspan="2">
							<SPAN class=STYLE2>安全设置 </SPAN>
							<SPAN class=STYLE6></SPAN>
						</td>
					</tr>
					<tr>
						<td width="108" height="32">
							<FONT color=#cc0000>*</FONT> 邮 &nbsp; 箱：
						</td>
						<td width="472">
							<s:textfield name="email" cssStyle="float: left" maxLength="60" size="20"></s:textfield>
							<div style="float: left; padding-left: 20px; word-break: break-all;">
								（如:zhangsan@sina.com）
								<span id="email.info" style="color: red" >${emailAlready}</span>
							</div>

						</td>
					</tr>
					<tr>
						<td height="70">
							<FONT color=#cc0000>*</FONT> 验 证 码：
						</td>
						<td>
							<s:textfield cssStyle="float: left" name="securityCode"/>
							<div style="float:left">
							<span id="number.info" style="color: red"></span>
							</div>
							<img src="securityCodeImageAction_showSecurityCode" id="Verify" style="cursor: pointer;" alt="看不清，换一张" />
								<span style="color: red">${codeError}</span>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<s:submit value="注   册"/>
							<s:reset value="重置"/>
						</td>
					</tr>
				</table>
			</center>
		</s:form>
	</BODY>
</HTML>