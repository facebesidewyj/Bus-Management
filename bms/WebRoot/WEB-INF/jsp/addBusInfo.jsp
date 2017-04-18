<%@ page contentType="text/html; charset=gb2312" language="java" errorPage="" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<title>公交车添加页面</title>
		<link href = "css/home.css" rel = "stylesheet" type = "text/css"/>
		<link href = "css/style.css" rel = "stylesheet" type = "text/css"/>
		<link href = "css/theme.css" rel = "stylesheet" type = "text/css" media = "all" title = "Aqua"/>
	</head>
	<script language = "javascript">
		function check() {
			var tBusNum = document.form1.busNum.value;
			var len = tBusNum.length;
			var t="\\d{"+len+"}";
			var RG=new RegExp(t);
			var result=RG.exec(tBusNum);
			if (tBusNum == "") {
				alert("车号不能为空!");
				return false;
			}
			if(result == null ||"null"==typeof(result)){
				alert("输入只能是0-9之间的数字");
				return false;
			}
			var tBeginSt = document.form1.beginSt.value;
			if (tBeginSt == "") {
				alert("起始站名称不能为空!");
				return false;
			}
			var tEndSt = document.form1.endSt.value;
			if (tEndSt == "") {
				alert("终点站名称不能为空!");
				return false;
			}
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
	
	<body>
		<table width = "100%" border = "0" cellpadding = "0" cellspacing = "0">
			<tr>
				<td width = "100" height = "25" align = "center" valign="middle" bgcolor="#0082BF">
					<a href ="addBusInfo.jsp">
						<strong>添加车次</strong>
					</a>
				</td>
				<td width="4" bgcolor="#F0F7FD"></td>
				<td width = "100" height = "25" align = "center" valign="middle">
					<a href = "addStInfo.jsp">
						<strong>添加站点</strong>
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
					<form name="form1" method="post" action="checkAddBusInfo.jsp" onSubmit="return check()">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" bordercolor="#FFFFFF" >
							<tr>
								<td align="right">车号：</td>
								<td>
									<input type="text" name="busNum">
								</td>
								<td align="right">起点站：</td>
								<td>
									<input type="text" name="beginSt" readonly>
									<select id="selectBeginSt" name="beginSt" onChange="loadStInfo(this.options.selectedIndex)">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${sts}" var="st">
											<option value="${st.stID}">
												${st.stName}
											</option>
										</c:forEach>
									</select>
									&nbsp;(从站点库中添加站点)<font color="red">*</font>
								</td>
							</tr>
							<tr>
								<td align="right">终点站：</td>
								<td>
									<input type="text" name="endSt" id="endSt" readonly>
									<select id="selectEndSt" name="endSt" onChange="loadStInfo(this.options.selectedIndex)">
										<option value="">
											--请选择--
										</option>
										<c:forEach items="${sts}" var="st">
											<option value="${st.stID}">
												${st.stName}
											</option>
										</c:forEach>
									</select>
									&nbsp;(从站点库中添加站点)<font color="red">*</font>
								</td>
								<td align="right">票价：</td>
								<td>
									<select name="selectPrice">
										<option>--请选择--</option>
										<option value="1元">1元</option>
										<option value="2元">2元</option>
									</select>
								</td>
							</tr>
							<tr>
								<td align="right">汽车等级：</td>
								<td>
									<select name="selectLevel">
										<option value="">--请选择--</option>
										<option value="普通">普通</option>
										<option value="高档">高档</option>
									</select>
								</td>
								<td align="right">票价类型：</td>
								<td>
									<select name="selectNote">
										<option>--请选择--</option>
										<option value="普通票价">普通票价</option>
									</select>
								</td>
							</tr>
							<tr>
								<td>上班时间：</td>
								<td colspan="3" align="left">
									<input type="text" name="busTime"/>
								</td>
							</tr>
							<tr>
								<td colspan="4" align="center"><input type="submit" name="Submit" value="提交">&nbsp;
									<input type="reset" name="Submit2" value="重置">
								</td>
							</tr>
						</table>
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>
