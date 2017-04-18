<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage=""%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>无标题文档</title>
		<link href="css/my_domain/main.css" type="text/css" rel="stylesheet">
		<script language="javascript">
		 function loadBusNum() { //将下拉框里的值传给文本框
			var index = document.getElementById("selectBusNum").selectedIndex;
			var value = document.getElementById("selectBusNum").options[index].value;
			document.getElementsByName("busnum")[0].value = value;

		 }
		 function loadStInfo(x) { //将下拉框里的值传给文本框
			var temp = document.getElementById("selectSt").options[x].text;
			document.getElementsByName("st")[0].value = temp;
		 }
		 function loadBeginSt(x) {
			var temp = document.getElementById("selectBeginSt").options[x].text;
			document.getElementsByName("beginSt")[0].value = temp;
		 }
		 function loadEndSt(x) {
			var temp = document.getElementById("selectEndSt").options[x].text;
			document.getElementsByName("endSt")[0].value = temp;
		 }
		</script>
	</head>
	
	<body onload="window.parent.contents.location.reload();">
		<!-- ${MessageSuccess} -->
		<img src="images/R2013-t-1.gif" width="150" style="position: relative; left: 30%; margin-left: -150;">
		<table align="center" width="468" border="1" cellpadding="1" cellspacing="0"  bordercolor="#ffffff">
			<tr>
				<td bgcolor="#F4F8FF">
					<font color="#007ED4"><strong> 线路查询</strong> </font>
				</td>
			</tr>
			<tr>
				<td>
					<form name="form1" method="post" action="query!queryBusNum.action">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="30%" align="right">
									<font color="#007ED4" size="2">线路名称</font>&nbsp;
								</td>
								<td width="70%">
									<input type="text" name="busnum">
									<input type="submit" name="Submit" value="线路查询">
									&nbsp;(如：1路)
								</td>
							</tr>
							<tr>
								<td width="30%" align="right">
									<font color="#007ED4" size="2">选择输入&nbsp;</font>
								</td>
								<td width="70%">
									<select name="selectBusNum" id="selectBusNum" onChange="loadBusNum()">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${buses}" var="bus">
											<option value="${bus.busNum}">
												${bus.busNum}路
											</option>
										</c:forEach>
									</select>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<br>
		<img src="images/R2013-t-2.gif" width="150" style="position: relative; left: 30%; margin-left: -150;">
		<table align="center" width="468" border="1" cellpadding="1" cellspacing="0" bordercolor="#ffffff">
			<tr>
				<td bgcolor="#EEFCEE">
					<font color="#46A539"><strong>站点查询</strong> </font>
				</td>
			</tr>
			<tr>
				<td>
					<form name="form2" method="post" action="query!queryStInfo.action" onSubmit="return checkStInfo()">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="30%" align="right">
									<font color="#46A539" size="2">站点名称</font>&nbsp;
								</td>
								<td width="70%">
									<input type="text" name="st">
									<input type="submit" name="Submit" value="站点查询">
									&nbsp;(如：火车站)
								</td>
							</tr>
							<tr>
								<td width="30%" align="right">
									<font color="#46A539" size="2">选择输入</font>&nbsp;
								</td>
								<td width="70%">
									<select name="selectSt" id="selectSt" onChange="loadStInfo(this.options.selectedIndex)">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${sts}" var="st">
											<option value="${st.stID}">
												${st.stName}
											</option>
										</c:forEach>
									</select>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
		<br>
		<img src="images/R2013-t-3.gif" width="150" style="position: relative; left: 30%; margin-left: -150;">
		<table align="center" width="468" border="1" cellpadding="1" cellspacing="0" bordercolor="#ffffff">
			<tr>
				<td bgcolor="#EFDADA">
					<font color="#DB4918"><strong>站点之间查询</strong></font>
				</td>
			</tr>
			<tr>
				<td>
					<form name="form3" method="post" action="query!queryStSt.action" onSubmit="return checkStInfo2()">
						<table width="100%" border="0" cellpadding="0" cellspacing="0">
							<tr>
								<td width="30%" align="right">
									<font color="#DB4918" size="2">起点名称</font>&nbsp;
								</td>
								<td width="70%">
									<input type="text" name="beginSt">
									&nbsp;(如：人民南路)
								</td>
							</tr>
							<tr>
								<td width="30%" align="right">
									<font color="#DB4918" size="2">选择输入</font>&nbsp;
								</td>
								<td width="70%">
									<select name="selectBeginSt" id="selectBeginSt" onChange="loadBeginSt(this.options.selectedIndex)">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${sts}" var="st">
											<option value="${st.stID}">
												${st.stName}
											</option>
										</c:forEach>
									</select>
								</td>
							</tr>
							<tr>
								<td width="30%" align="right">
									<font color="#DB4918" size="2">终点名称</font>&nbsp;
								</td>
								<td width="70%">
									<input type="text" name="endSt">
									<input type="submit" name="Submit2" value="站站查询">
									&nbsp;(如：火车站)
								</td>
							</tr>
							<tr>
								<td width="30%" align="right">
									<font color="#DB4918" size="2">选择输入</font>&nbsp;
								</td>
								<td width="70%">
									<select name="selectEndSt" id="selectEndSt" onChange="loadEndSt(this.options.selectedIndex)">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${sts}" var="st">
											<option value="${st.stID}">
												${st.stName}
											</option>
										</c:forEach>
									</select>
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
