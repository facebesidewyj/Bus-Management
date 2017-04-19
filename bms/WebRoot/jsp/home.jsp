<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">   
		<title>公交线路查询系统</title>
	</head>
	
	<frameset rows="30%,*" frameborder="NO" border="0" framespacing="0">
		<frame name="banner" scrolling="no" noresize  src="${pageContext.request.contextPath}/uiAction_frame_title.action">
		<frameset cols="15%,*">
			<frame id="contents" name="contents"  src="${pageContext.request.contextPath}/uiAction_frame_left.action" scrolling="NO" noresize>
			<frame name="main" src="${pageContext.request.contextPath}/uiAction_frame_query.action">
		</frameset>
		<noframes>
			<body></body>
		</noframes>
	</frameset>
</html>

