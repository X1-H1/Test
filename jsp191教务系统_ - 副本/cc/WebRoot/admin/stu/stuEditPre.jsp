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
				<div class="BoxHeader-center MarginTop10">学生信息</div>
			</div>
			<div class="Slot">
				<form action="<%=path %>/stuEdit.action" name="form1" method="post">
				     <table align="left" border="0">
					        <tr>
					             <td align="center">学号:</td>
					             <td><input name="stuXuehao" type="text" value="${request.stu.stuXuehao}"/></td>
					        </tr>
					        <tr>
					             <td align="center">姓名:</td>
					             <td><input type="text" name="stuRealname" value="${request.stu.stuRealname}"/></td>
					        </tr>
					        <tr>
					             <td align="center">性别:</td>
					             <td><input type="radio" name="stuSex" value="男" checked="checked"/>男&nbsp;&nbsp;&nbsp;<input type="radio" name="stuSex" value="女"/>女</td>
					        </tr>
					        <tr>
					             <td align="center">年龄:</td>
					             <td><input type="text" name="stuAge" value="${request.stu.stuCard}"/></td>
					        </tr>
					        <tr>
					             <td align="center">身份证号:</td>
					             <td><input type="text" name="stuCard" value="${request.stu.stuCard}"/></td>
					        </tr>
					        <tr>
					             <td align="center">登陆账号:</td>
					             <td><input type="text" readonly="readonly" name="loginName" value="${request.stu.loginName}"/></td>
					        </tr>
					        
					        <tr>
					             <td align="center">登陆密码:</td>
					             <td><input type="text" readonly="readonly" name="loginPw" value="${request.stu.loginPw}"/></td>
					        </tr>
					        <tr>
					             <td colspan="2">
					                 <input type="hidden" name="stuId" value="${request.stu.stuId}"/>
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
