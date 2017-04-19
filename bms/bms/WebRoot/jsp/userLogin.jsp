<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage=""%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<STYLE type=text/css>
		TD {
			FONT-WEIGHT: normal;
			FONT-SIZE: 9pt;
			FONT-FAMILY: "宋体", "serif"
		}
		
		A:link {
			TEXT-DECORATION: none
		}
		
		A:visited {
			FONT-WEIGHT: normal;
			TEXT-DECORATION: none
		}
		
		BODY {
			FONT-SIZE: 9pt;
			FONT-FAMILY: "宋体", "serif"
		}
		
		TR {
			FONT-SIZE: 9pt;
			FONT-FAMILY: "宋体", "serif"
		}
		
		.unnamed1 {
			FONT-WEIGHT: bold;
			FONT-SIZE: 9pt
		}
		
		.p9 {
			FONT-SIZE: 9pt;
			FONT-FAMILY: "宋体"
		}
		
		.unnamed2 {
			FONT-SIZE: 11pt
		}
		</STYLE>
		<title>用户登录</title>
	</head>
	<BODY background="images/bus.jpg" bgColor=#FFFFFF leftMargin=0 topMargin=0>
		&nbsp; ${registerSuccess}
		<s:form namespace="/" action="userAction_login">
			<TABLE cellSpacing=0 cellPadding=0 width=372 align=center border=0>
				<TBODY>
					<TR>
						<TD colSpan=3>&nbsp;</TD>
					</TR>
					<TR>
						<TD height=175>
							<TABLE cellSpacing=0 cellPadding=0 width=348 border=0>
								<TBODY>
									<TR>
										<TD align="center" height=120>
											<TABLE id=AutoNumber1 style="BORDER-COLLAPSE: collapse" borderColor=#e0e1db height=107 cellSpacing=0 cellPadding=0 width=327 border=1>
												<TBODY>
													<TR>
														<TD width=323 height=30 style="background-color: #ffffff">
															欢迎登录公交查询系统
														</TD>
													</TR>
													<TR>
														<TD bgColor=#f5f2ed>
															<TABLE cellSpacing=0 cellPadding=0 width=314 border=0>
																<TBODY>
																	<TR>
																		<TD align="center" width=85>
																			<img height=100 src="images/ren.gif" width=78 border=0>
																		</TD>
																		<TD width=229>
																			<P>
																				<BR> 用户名:
																				<s:textfield name="username" />
																				<BR> <BR> 
																				密码:
																				<s:password name="password" />
																				<SPAN class=form></SPAN>
																			</P>
																			<font color="#ff0000">
																				<s:fielderror></s:fielderror>
																			</font>  
																			<s:submit value="登录"/>
																			<A href="userAction_toRegister">
																				<IMG height=19 src="images/zhuche.gif" width=70 border=0> 
																			</A>
																			<a href="adminAction_toAdminLogin">
																				<font color="#FEA11E">管理员登录</font>
																			</a>
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
		</s:form>
		<p>&nbsp;</p>
		<p>&nbsp;</p>

		<table width="768" border="0" align="center"/>
	</BODY>
</html>
