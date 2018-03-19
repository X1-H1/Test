<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
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
    <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script>
    
  </head>
  
  <body>
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">录入公告信息</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/gonggaoAdd.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">标题:</td>
					             <td><input type="text" name="gonggaoTitle"/></td>
					        </tr>
					        <tr>
					             <td align="center">内容:</td>
					             <td>
					                 <FCK:editor instanceName="gonggaoContent"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
	                                 </FCK:editor>
                                 </td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="submit" value="确定"/>
					                 <input  type="reset" value="取消"/>
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
