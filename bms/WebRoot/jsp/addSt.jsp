<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>站点添加</title>
	</head>

	<body bgcolor="#FF99FF">
		<center>
			<s:form namespace="/" action="stationAction_addStation">
				<table width="500" border="1" cellpadding="1" cellspacing="0">
	  				<tr>
	    				<td colspan="2">
	    					<div align="center" class="STYLE1 STYLE2">添加站点</div>
	    				</td>
	    			</tr>
					<tr>
						<td width="107">
							<div align="right">站点名称：</div>
						</td>
					    <td width="383">
					    	<s:textfield id="stationName" name="stationName"/>
					    	<a href="#" onclick="checkStation()">站点查重</a>
					    </td>
					 </tr>
					 <tr>
						<td>
							<div align="right">站点序号：</div>
						</td>
						<td>
							<s:textfield name="stationOrder"/>
						</td>
					 </tr>
	  				 <tr>
	    				<td colspan="2">
	    					<div align="center">
	    						<input type="submit" value="提  交" />
	    						<input type="reset" value="重  置" />
	    					</div>
	    				</td>
					 </tr>
				</table>
			</s:form>
		</center>
	</body>
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
</html>