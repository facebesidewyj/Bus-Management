<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>经过该站点的线路信息查询</title>
	</head>
	
	<body bgcolor="#CCCC99">
		<center>
			<h3 style="left: 210px; position: absolute; top: 15px;">
				经过站台<strong style="color:#00CC00">【${st}】</strong>的所有公交线路的信息列于下：
			</h3>
			<table style="width: 706px; left: 210px; position: absolute; top: 45px; bottom: 70px;">
				<tr>
					<td width="180" style="line-height: 25px;">
						<c:forEach items="${sbs}" var="sb">
							${sb }<br/>
						</c:forEach>
					</td>
				</tr>
			</table>
		</center>
	</body>
</html>