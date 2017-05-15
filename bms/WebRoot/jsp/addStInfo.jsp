<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ page import = "java.util.*" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>站点添加页面</title>
		<link href = "${pageContext.request.contextPath}/css/home.css" rel = "stylesheet" type = "text/css"/>
		<link href = "${pageContext.request.contextPath}/css/style.css" rel = "stylesheet" type = "text/css"/>
		<link href = "${pageContext.request.contextPath}/css/theme.css" rel = "stylesheet" type = "text/css" media = "all" title = "Aqua"/>
	</head>
	
	<body>
		<table width = "100%" border = "0" cellpadding = "0" cellspacing = "0">
			<tr>
				<td width = "100" height = "25" align = "center" valign="middle">
					<a href ="operate_show">
						<strong>添加车次</strong>
					</a>
				</td>
				<td width="4" bgcolor="#F0F7FD"></td>
				<td width = "100" height = "25" align = "center" valign="middle" bgcolor="#0082BF">
					<a href = "${pageContext.request.contextPath}/busAction_findAllBus">
						<strong>添加线路</strong>
					</a>
				</td>
				<td width="4" bgcolor="#F0F7FD"></td>
				<td align="center" valign="middle" bgcolor="#F0F7FD"></td>
			</tr>
			<tr>
				<td height="5" bgcolor="#0082BF" colspan="11"></td>
			</tr>
		</table>
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>
					<form name="form1" method="post" action="busStationAction_addBusStation">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" align="center" bordercolor="#FFFFFF" >
							<tr>
								<td align="right">添加站点：</td>
								<td>
									<input type="text" name="stationName" value="" readonly>
									<select id="stationname" name="stationID" onChange="loadStation(this.options.selectedIndex)">
											<option value="">
												--请选择--
											</option>
											<c:forEach items="${sts}" var="st">
												<option id="startId" value="${st.id}">
													${st.stationName}
												</option>
											</c:forEach>
										</select>
									&nbsp;(从站点库中添加站点)
									<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td align="right">站点序号：</td>
								<td align="left">
									<s:textfield name="stationOrder"/>
								</td>
							</tr>
							<tr>
								<td align="right">所属车次选择：</td>
								<td>
									<input type="text" name="busName" value="" readonly>
										<select id="busname" onChange="loadBus(this.options.selectedIndex)">
											<option value="">
												--请选择--
											</option>
											<c:forEach items="${buses}" var="bus">
												<option value="${bus.busName}">
												${bus.busName}
												</option>
											</c:forEach>
										</select>
									&nbsp;(请从车库中添加)
									<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td align="center" colspan="2">
									<input type="submit" value="确定">&nbsp;
									<input type="reset" value="重置">
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<a href="query.action">回到首页</a>
		<script type="text/javascript">
			function loadBus(x) {
				var temp = document.getElementById("busname").options[x].text;
				document.getElementsByName("busName")[0].value = temp;
			}
			
			function loadStation(x) {
				var temp = document.getElementById("stationname").options[x].text;
				document.getElementsByName("stationName")[0].value = temp;
			}
		</script>
	</body>
</html>
