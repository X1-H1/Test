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
    <script type='text/javascript' src='<%=path %>/dwr/interface/kechengService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
    
    <script type="text/javascript">
        function check()
        {
        
        }
        function init()
        {
            kechengService.findAllKecheng(callback);
        }
        function callback(data)
        {
            DWRUtil.addOptions("kechengId",data,"kechengId","kechengName");
        }
        
        
        function back()
        {
           window.location.back(-1);
        }
        
    </script>
  </head>
  
  <body onload="init()">
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">教师信息</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/teaEdit.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">编号:</td>
					             <td><input name="teaBianhao" type="text" value="<s:property value="#request.tea.teaBianhao"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">姓名:</td>
					             <td><input type="text" name="teaRealname" value="<s:property value="#request.tea.teaRealname"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">性别:</td>
					             <td><input type="radio" name="teaSex" value="男" checked="checked"/>男&nbsp;&nbsp;&nbsp;<input type="radio" name="teaSex" value="女"/>女</td>
					        </tr>
					        <tr>
					             <td align="center">年龄:</td>
					             <td><input type="text" name="teaAge" value="<s:property value="#request.tea.teaAge"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">联系方式:</td>
					             <td><input type="text" name="teaTel" value="<s:property value="#request.tea.teaTel"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">住址:</td>
					             <td><input type="text" name="teaAddress" value="<s:property value="#request.tea.teaAddress"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">简历:</td>
					             <td>
					                 <textarea rows="7" cols="50" name="teaJianli"><s:property value="#request.tea.teaJianli"/></textarea>
                                 </td>
					        </tr>
					        <tr>
					             <td align="center">所授课程:</td>
					             <td>
					                 <select name="kechengId" id="kechengId"></select>&nbsp;&nbsp;<font color="red" style="font-size: 10px;">如果没有课程。先录入课程信息</font>
                                 </td>
					        </tr>
					        <tr>
					             <td align="center">登陆账号:</td>
					             <td><input type="text" name="loginName" readonly="readonly" value="<s:property value="#request.tea.loginName"/>"/></td>
					        </tr>
					        <tr>
					             <td align="center">登陆密码:</td>
					             <td><input type="text" name="loginPw" readonly="readonly" value="<s:property value="#request.tea.loginPw"/>"/></td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="hidden" name="teaId" value="<s:property value="#request.tea.teaId"/>">
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
