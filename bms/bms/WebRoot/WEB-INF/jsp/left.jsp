<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title></title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<link href="css/my_domain/main.css" type=text/css rel=stylesheet>
	</head>
	
	<body>
		<TABLE height=469 cellSpacing=0 cellPadding=0 width=182 border=0>
			<TBODY>
				<TR>
					<TD vAlign=top height=270>
						<TABLE cellSpacing=0 cellPadding=0 width=165 align=center bgColor=#ffffff border=0>
							<TBODY>
								<TR>
									<TD vAlign=top align=left colSpan=3 height=7>
										<img height=38 src="images/my_domain/menu_01.gif" width=170>
									</TD>
								</TR>
								<TR>
									<TD width=8 background=images/my_domain/menu_03.gif>
										<IMG height=4 src="images/my_domain/menu_03.gif" width=8>
									</TD>
									<TD vAlign=top align="center" width=154>
										<TABLE class=font_green02 cellSpacing=0 cellPadding=0 width=0 border=0>
											<TBODY>
												<TR>
													<TD>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
											<TBODY>
												<TR>
													<TD>
														<TABLE height=22 cellSpacing=0 cellPadding=0 width=130 background=images/my_domain/menu_bg.gif border=0>
															<TBODY>
																<TR>
																	<TD align="center" width=40>
																		<IMG height=15 src="images/my_domain/01.gif" width=16>
																	</TD>
																	<TD style="CURSOR: hand" onclick="document.all.menu0.style.display=document.all.menu0.style.display=='none'?'':'none';return false;" align=left width=90>
																		操作
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
												<TR id=menu0>
													<TD class=font_green02>
														<TABLE class=font_hui02 cellSpacing=0 cellPadding=0 width=130 border=0>
															<TBODY>
																<c:if test="${user!=null}">
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="query.action" target=main><strong>站点和车次查询</strong></A>
																		</TD>
																	</TR>
																</c:if>
																<c:if test="${admin!=null}">
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="operate!show.action" target=main>
																				<strong>车次和站点操作</strong>
																			</A>
																		</TD>
																	</TR>
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="listSt.action" target=main>
																				<strong>站点操作</strong>
																			</A>
																		</TD>
																	</TR>
																</c:if>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
											<TBODY>
												<TR>
													<TD>
														<TABLE height=22 cellSpacing=0 cellPadding=0 width=130 background=images/my_domain/menu_bg.gif border=0>
															<TBODY>
																<TR>
																	<TD align="center" width=40>
																		<IMG height=15 src="images/my_domain/02.gif" width=16>
																	</TD>
																	<TD style="CURSOR: hand" onclick="document.all.menu1.style.display=document.all.menu1.style.display=='none'?'':'none';return false;" align=left width=90>
																		用户管理
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
												<TR id=menu1 style="">
													<TD class=font_green02>
														<TABLE class=font_hui02 cellSpacing=0 cellPadding=0 width=96 border=0>
															<TBODY>
																<c:if test="${user!=null}">
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="userAction_showUserInfo" target=main>
																				<strong>用户信息</strong>
																			</A>
																		</TD>
																	</TR>
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left width=84>
																			<A class=font_hui05 href="userAction_userLoginout" target=main>
																				<strong onclick="window.parent.location.reload()">用户注销</strong>
																			</A>
																		</TD>
																	</TR>
																</c:if>
																<c:if test="${admin!=null}">
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left width=84>
																			<A class=font_hui05 href="adminAction_showUserList" target=main>
																				<strong>用户列表</strong>
																			</A>
																		</TD>
																	</TR>
																</c:if>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
										<c:if test="${admin!=null}">
											<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE height=22 cellSpacing=0 cellPadding=0 width=130 background=images/my_domain/menu_bg.gif border=0>
																<TBODY>
																	<TR>
																		<TD align="center" width=40>
																			<IMG height=15 src="images/my_domain/02.gif" width=16>
																		</TD>
																		<TD style="CURSOR: hand" onclick="document.all.menu12.style.display=document.all.menu12.style.display=='none'?'':'none';return false;" align=left width=90>
																			管理员信息
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</TD>
													</TR>
													<TR id=menu12 style="">
														<TD class=font_green02>
															<TABLE class=font_hui02 cellSpacing=0 cellPadding=0 width=96 border=0>
																<TBODY>
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="adminLogin.jsp" target="main">
																				<strong>管理员登录</strong>
																			</A>
																			<br>
																		</TD>
																	</TR>
																	<TR>
																		<TD align="center" width=22 height=22>
																			<img src="images/my_domain/pic_item.gif">
																		</TD>
																		<TD align=left>
																			<A class=font_hui05 href="admin!logout.action" target=main>
																				<strong  onclick="window.parent.location.reload()">管理员注销</strong>
																			</A>
																		</TD>
																	</tr>
																</TBODY>
															</TABLE>
														</TD>
													</TR>
												</TBODY>
											</TABLE>
										</c:if>
											<TABLE cellSpacing=0 cellPadding=0 width=0 border=0>
												<TBODY>
													<TR>
														<TD>
															<TABLE height=22 cellSpacing=0 cellPadding=0 width=130 background=images/my_domain/menu_bg.gif border=0>
																<TBODY>
																	<TR>
																		<TD align="center" width=40>
																			<IMG height=15 src="images/my_domain/02.gif" width=16>
																		</TD>
																		<TD style="CURSOR: hand" onclick="document.all.menu13.style.display=document.all.menu13.style.display=='none'?'':'none';return false;" align=left width=90>
																			留言板
																		</TD>
																	</TR>
																</TBODY>
															</TABLE>
														</TD>
													</TR>
													<TR id=menu13 style="">
														<TD class=font_green02>
															<TABLE class=font_hui02 cellSpacing=0 cellPadding=0 width=96 border=0>
																<TBODY>
																	<c:if test="${user!=null}">
																		<TR>
																			<TD align="center" width=22 height=22>
																				<img src="images/my_domain/pic_item.gif">
																			</TD>
																			<TD align=left>
																				<A class=font_hui05 href="addMessage.jsp" target="main">
																					<strong>留言</strong>
																				</A>
																			</TD>
																		</TR>
																		<TR>
																			<TD align="center" width=22 height=22>
																				<img src="images/my_domain/pic_item.gif">
																			</TD>
																			<TD align=left>
																				<A class=font_hui05 href="msg!show.action" target=main>
																					<strong>留言操作</strong>
																				</A>
																			</TD>
																		</TR>
																	</c:if>
																	<c:if test="${admin!=null}">
																		<TR>
																			<TD align="center" width=22 height=22>
																				<img src="images/my_domain/pic_item.gif">
																			</TD>
																			<TD align=left>
																				<A class=font_hui05 href="listMessage!show.action" target=main>
																					<strong>留言操作</strong>
																				</A>
																			</TD>
																		</TR>
																	</c:if>
															</TBODY>
														</TABLE>
													</TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
									<TD width=8 background=images/my_domain/menu_04.gif>
										<IMG height=4 src="images/my_domain/menu_04.gif" width=8>
									</TD>
								</TR>
								<TR>
									<TD vAlign=bottom align=left colSpan=3 height=7>
										<IMG height=15 src="images/my_domain/menu_02.gif" width=170>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
	</body>
</html>