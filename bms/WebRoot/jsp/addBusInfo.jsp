<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>公交车添加页面</title>
		<link href = "${pageContext.request.contextPath}/css/home.css" rel = "stylesheet" type = "text/css"/>
		<link href = "${pageContext.request.contextPath}/css/style.css" rel = "stylesheet" type = "text/css"/>
		<link href = "${pageContext.request.contextPath}/css/theme.css" rel = "stylesheet" type = "text/css" media = "all" title = "Aqua"/>
	</head>
	<script language = "javascript">
		function check() {
			var tBusNum = document.form1.busName.value;
			if (tBusNum == "") {
				alert("车号不能为空!");
				return false;
			}
			var tBeginSt = document.getElementById("start").value;
			if (tBeginSt == "") {
				alert("起始站名称不能为空!");
				return false;
			}
			
			var tEndSt = document.getElementById("end").value;
			if (tEndSt == "") {
				alert("终点站名称不能为空!");
				return false;
			}
		}
		
		function loadBeginSt(x) {
			var temp = document.getElementById("startStation").options[x].text;
			document.getElementsByName("startSt")[0].value = temp;
		}
		
		function loadEndSt(x) {
			var temp = document.getElementById("endStation").options[x].text;
			document.getElementsByName("endSt")[0].value = temp;
		}
	</script>
	
	<body>
		<table width = "100%" border = "0" cellpadding = "0" cellspacing = "0">
			<tr>
				<td width = "100" height = "25" align = "center" valign="middle" bgcolor="#0082BF">
					<a href ="${pageContext.request.contextPath}/jsp/addBusInfo.jsp">
						<strong>添加车次</strong>
					</a>
				</td>
				<td width="4" bgcolor="#F0F7FD"></td>
				<td width = "100" height = "25" align = "center" valign="middle">
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
		<table width="100%" border = "0" cellpadding="0" cellspacing="0">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>
					<form name="form1" method="post" action="busAction_addBus" onSubmit="return check()">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" bordercolor="#FFFFFF" >
							<tr>
								<td align="right">车名：</td>
								<td>
									<input type="text" name="busName">
								</td>
								<td align="right">起点站：</td>
								<td>
									<input type="text" name="startSt" id="start"  value="" readonly>
										<select id="startStation" name="startStation" onChange="loadBeginSt(this.options.selectedIndex)">
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
								<td align="right">终点站：</td>
								<td>
									<input type="text" name="endSt" id="end" readonly>
										<select id="endStation" name="endStation" onChange="loadEndSt(this.options.selectedIndex)">
											<option value="">
												--请选择--
											</option>
											<c:forEach items="${sts}" var="st">
												<option id="endId" value="${st.id}">
													${st.stationName}
												</option>
											</c:forEach>
										</select>
									&nbsp;(从站点库中添加站点)
									<font color="red">*</font>
								</td>
								<td align="right">票价：</td>
								<td>
									<select name="price">
										<option>--请选择--</option>
										<option value="1元">1元</option>
										<option value="2元">2元</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align="right">汽车等级：</td>
								<td>
									<select name="level">
										<option value="">--请选择--</option>
										<option value="普通">普通</option>
										<option value="高档">高档</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>运行时间：</td>
								<td colspan="3" align="left">
									<s:textfield name="bus_time"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" align="center">
									<s:submit value="提交"/>&nbsp;
									<s:reset value="重置"/>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<a href="query.action">回到首页</a>
	</body>
</html>