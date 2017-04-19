<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ page import = "java.util.*" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
					<a href ="${pageContext.request.contextPath}/jsp/addBusInfo.jsp">
						<strong>添加车次</strong>
					</a>
				</td>
				<td width="4" bgcolor="#F0F7FD"></td>
				<td width = "100" height = "25" align = "center" valign="middle" bgcolor="#0082BF">
					<a href = "${pageContext.request.contextPath}/jsp/addStInfo.jsp">
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
		<table width="100%" border="0" cellpadding="0" cellspacing="0">
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td>
					<form name="form1" method="post" action="stationAction_addStationInHome">
						<table width="100%"  border="1" cellpadding="1" cellspacing="0" align="center" bordercolor="#FFFFFF" >
							<tr>
								<td align="right">添加站点：</td>
								<td>
									<s:textfield id="stationName" name="stationName"/>&nbsp;&nbsp;
									<a href="#" onclick="checkStation()">站点查重</a>
								</td>
							</tr>
							<tr>
								<td align="right">站点序号：</td>
								<td align="left">
									<s:textfield name="stationOrder"/>
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
			function checkStation(){
				var stationName  = document.getElementById("stationName").value;
				//发送ajax通过部门查询职务
				//1.获得引擎
				var xmlhttp;
				if (window.XMLHttpRequest){
					// code for IE7+, Firefox, Chrome, Opera, Safari
				 	 xmlhttp=new XMLHttpRequest();
				}
				else{
					// code for IE6, IE5
				 	 xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
				}
				//2.设置回调函数
				xmlhttp.onreadystatechange = function(){
					if(xmlhttp.readyState == 4 && xmlhttp.status == 200){
						//获得返回的数据
						var text = xmlhttp.responseText;
						alert(text);
						}
				};
				//3.创建链接
				var url = "${pageContext.request.contextPath}/stationAction_findStationByName?stationName="+stationName;
				xmlhttp.open("GET", url);
				//4.发送请求
				xmlhttp.send(null);
			}
		</script>
	</body>
</html>
