<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>站点列表</title>
		<link href="css/list.css" rel="stylesheet" type="text/css" />
	</head>

	<body  onload="window.parent.contents.location.reload();" bgcolor="#99CCFF" >
		<table width="525" height="190" border="1" align="center" cellpadding="2" cellspacing="0" bordercolor="#00FF00" bgcolor="#eafce6">
			<tr height="30">
				<td colspan="5">
					<div align="center">
						<strong style="content:open-quote; color:#0000FF">
							公交站点基本信息管理 
							<span class="STYLE3">
								<a href="stationAction_toAddStation">添加站点</a>
							</span>
						</strong>
					</div>
				</td>
			</tr>
			 <tr>
				<td width="98" height="25" bordercolor="#00FF00" bgcolor="#FFFFCC">
					<div align="center">
						<span class="STYLE2">编号</span>
					</div>
				</td>
				<td width="152">
					<div align="center">
						<span class="STYLE2">站点名称</span>
					</div>
				</td>
				<td width="104">
					<div align="center">
						<span class="STYLE2">站点序号</span>
					</div>
				</td>
				<td colspan="2">
					<div align="center">
						<span class="STYLE2">站点操作</span>
					</div>
				</td>
			</tr>
			<s:iterator value="data">
				<tr>
					<td height="25">
						<div align="center" class="STYLE4"> <s:property value="id"/> </div>
					</td>
					<td>
						<div align="center" class="STYLE4"> <s:property value="stationName"/> </div>
					</td>
					<td>
						<div align="center" class="STYLE4"> <s:property value="stationOrder"/> </div>
					</td>
					<td width="75" bordercolor="#00FF00">
						<div align="center">
							<span class="STYLE4">
								<s:a namespace="/" action="stationAction_deleteStationById" onclick="return confirm('确认要删除吗？')">
									<s:param name="id" value="id"></s:param>
									删除
								</s:a>
							</span>
						</div>
					</td>
					<td width="75">
						<div align="center">
							<span class="STYLE4">
								<s:a namespace="/" action="stationAction_updateStationByIdForUI">
									<s:param name="id" value="id"></s:param>
									更新
								</s:a>
							</span>
						</div>
					</td>
				</tr>
			</s:iterator>
			<tr>
				<td align="center" colspan="5">
					<div id="divTopPageNavi" class="list_r_title_text3">
						<span>第<s:property value="pageNum" />/<s:property value="totalPage" />页</span>
						<span>
							<s:if test="pageNum gt 1">
								<a href="javascript:void(0)" onclick="showPage(1)">[首页]</a>&nbsp;&nbsp;
								<a href="javascript:void(0)" onclick="showPage(<s:property value="pageNum - 1" /> )">[上一页]</a>&nbsp;&nbsp;
							</s:if>
							<!--动态滚动条 -->
							<s:iterator begin="start" end="end" var="num">
								<a href="#" onclick="showPage(<s:property value="#num" />)"><s:property value="#num" /></a>            
							</s:iterator>
				
							<s:if test="pageNum lt totalPage">
								<a href="javascript:void(0)" onclick="showPage(<s:property value="pageNum + 1"/> )">[下一页]</a>&nbsp;&nbsp;
								<a href="javascript:void(0)" onclick="showPage(<s:property value="totalPage"/>)">[尾页]</a>
							</s:if>
						</span>
					</div>
				</td>
			</tr>
			<s:a namespace="/" action="adminAction_toHome">跳转首页</s:a>
		</table>
		<script type="text/javascript">
			function showPage(num){
				window.location.href = "${pageContext.request.contextPath}/stationAction_showInfo?pageNum= "+ num;
			}
		</script>
	</body>
</html>