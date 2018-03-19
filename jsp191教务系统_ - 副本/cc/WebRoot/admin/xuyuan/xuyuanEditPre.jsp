<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=path %>/css/Common.css" rel="stylesheet" type="text/css" />
    <link href="<%=path %>/css/sitegeneric08.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">学院信息编辑</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/xuyuanEdit.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">学院编号:</td>
					             <td><input name="xuyuanBianhao" type="text" value="<s:property value="#request.xuyuan.xuyuanBianhao"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">学院名称:</td>
					             <td><input type="text" name="xuyuanName" value="<s:property value="#request.xuyuan.xuyuanName"/>"/></td>
					        </tr>
					         <tr>
					             <td align="center">学院简介:</td>
					             <td>
					                 <textarea rows="7" cols="50" name="xuyuanJianjie"><s:property value="#request.xuyuan.xuyuanJianjie"/></textarea>
                                 </td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="hidden" name="xuyuanId" value="<s:property value="#request.xuyuan.xuyuanId"/>">
					                 <input type="submit" value="确定"/>
					                 <input type="reset" value="重置"/>
					                 <input  type="button" onclick="javascript:history.go(-1);" value="返回"/>
					                 <font color="red"></font>
					             </td>
					        </tr>
					        <tr height="30">
					        </tr>
					    </table>
				</form>
				<ul>
					<li><a href="" title="">&nbsp;</a> </li>
					<li><a href="" title="">&nbsp;</a> </li>
				</ul>
			</div>
        </div>
  </body>
</html>
