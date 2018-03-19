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
    
  </head>
  
  <body>
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">课程信息</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/kechengEdit.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">课程编号:</td>
					             <td><input type="text" name="kechengBianhao" value="<s:property value="#request.kecheng.kechengBianhao"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">课程名称:</td>
					             <td><input type="text" name="kechengName" value="<s:property value="#request.kecheng.kechengName"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">学时:</td>
					             <td><input type="text" name="kechengXueshi" value="<s:property value="#request.kecheng.kechengXueshi"/>" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
					        </tr>
					         <tr>
					             <td align="center">类型:</td>
					             <td>
					                  <select name="kechengLeixing">
					                       <option value="1">校级公共课</option>
					                       <option value="2">校级基础课</option>
					                       <option value="3">校级必修课</option>
					                       <option value="4">校级选修课</option>
					                       <option value="5">院级公共课</option>
					                       <option value="6">院级必修课</option>
					                       <option value="7">院级选修课</option>
					                  </select>
                                 </td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="hidden" name="kechengId" value="<s:property value="#request.kecheng.kechengId"/>">
					                 <input type="submit" value="确定"/>
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
