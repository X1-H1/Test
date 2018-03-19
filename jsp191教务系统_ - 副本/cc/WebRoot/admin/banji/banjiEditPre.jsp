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
    <script type="text/javascript" src="<%=path %>/My97DatePicker/WdatePicker.js"></script> 
    
    
    
    <script type="text/javascript">
        function check()
        {
        
        }
        
    </script>
  </head>
  
  <body onload="init()">
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">录入班级信息</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/banjiEdit.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">班级编号:</td>
					             <td><input name="banjiBianhao" type="text" value="<s:property value="#request.banji.banjiBianhao"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">班级名称:</td>
					             <td><input type="text" name="banjiName" value="<s:property value="#request.banji.banjiName"/>"/></td>
					        </tr>
					         <tr>
					             <td align="center">入学年份:</td>
					             <td><input class="Wdate" readonly="true" type="text" id="banjiRuxuenianfen" name="banjiRuxuenianfen" onfocus="new WdatePicker(this)"/></td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="hidden" name="banjiId" value="<s:property value="#request.banji.banjiId"/>">
					                 <input type="submit" value="确定""/>
					                 <input  type="reset" value="重置"/>
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
