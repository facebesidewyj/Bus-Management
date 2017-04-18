<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>网友留言</TITLE>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<META content="MSHTML 6.00.2900.3059" name=GENERATOR>
	</HEAD>
	<link href="css/my_domain/main.css" type=text/css rel=stylesheet>
	<script type="text/javascript">
		function check() {
			var paraTopic = document.form1.topic.value;
			if (paraTopic == "") {
				alert("留言的主题不能为空！");
				return false;
			}
			var paraMessagetext = document.form1.messagetext.value;
			if (paraMessagetext == "") {
				alert("留言的内容不能为空！");
				return false;
			}
		}
		function success(){
			alert('留言成功');
		}
	</script>
	
	<BODY>
		<form action="msg!save.action" name="form1" method="post">
			<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
					<TR>
						<TD width="100%">
							<img height=67 src="images/leaf.gif" width=753>
							<BR>
							<BR>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			<TABLE cellSpacing=0 cellPadding=0 width="100%" align=center border=0>
				<TBODY>
					<TR>
						<TD width="9%"></TD>
						<TD width="80%">
							<TABLE borderColor=#bed09d cellPadding=3 width="100%" border=3>
								<TBODY>
									<TR>
										<TD width="100%">
											<P align=center>
												<STRONG>
													<SPAN style="FONT-SIZE: 10.4pt">
														<FONT color=#ff8000>留言板</FONT>
													</SPAN>
												</STRONG>
											</P>
											<TABLE cellSpacing=0 cellPadding=6 width="100%" border=0>
												<TBODY>
													<TR>
														<TD width="100%" bgColor=#e9efde>
															<table width="100%" border="0">
																<tr>
																	<td>
																		E-mail:&nbsp;&nbsp;
																		<input type="text" name="email" value="${user}">
																	</td>
																</tr>
																<tr>
																	<td>
																		留言主题:
																		<input type="text" name="theme">
																	</td>
																</tr>
																<tr>
																	<td>
																		留言内容:
																	</td>
																</tr>
																<tr>
																	<td>
																		<textarea name="message" cols="50" rows="10"></textarea>
																	</td>
																</tr>
															</table>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
											<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
												<TBODY>
													<TR>
														<TD width="30%">
															<P align=center>
																<IMG height=100 src="images/175.jpg" width=87>
															</P>
														</TD>
														<TD vAlign=top width="70%">
															<SPAN style="FONT-SIZE: 9pt">
																<FONT color=#400040><BR></FONT>
																<FONT color=#400040><BR><BR></FONT>
															</SPAN>
															<input type="submit" name="Submit" value="留言" onClick="success()">
															&nbsp;&nbsp;&nbsp;
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</TD>
									</TR>
								</TBODY>
							</TABLE>
						</TD>
						<TD width="11%"></TD>
					</TR>
				</TBODY>
			</TABLE>
		</form>
	</BODY>
</HTML>
