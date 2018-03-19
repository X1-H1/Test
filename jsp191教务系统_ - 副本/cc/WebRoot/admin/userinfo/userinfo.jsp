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
    <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    <script type="text/javascript">
       function check1()
       {
          var userPw=document.form1.userPw.value;
          var userPwZhengqu='<s:property value="#session.admin.userPw"/>';
          if(userPw!=userPwZhengqu)
          {
             alert("旧密码输入不正确");
             return ;
          }
          
          var userPwNew=document.form1.userPwNew.value;
          var userPwNew1=document.form1.userPwNew1.value;
          if(userPwNew!=userPwNew1)
          {
              alert("两次输入的密码不一致");
              return ;
          }
          
          document.getElementById("indicator").style.display="block";
          loginService.adminPwEdit(document.form1.userPwNew.value,callback);
       }
       
       function callback(data)
       {
           document.getElementById("indicator").style.display="none";
           alert("修改成功");
       }
    </script>
  </head>
  
  <body>
		<div class="NewContainer770">
			<div class="BoxHeader">
				<div class="BoxHeader-center MarginTop10">个人信息</div>
			</div>
			<div class="Slot">
				    <form action="" name="form1">
				    <table align="left" border="0">
				        <tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         用户名：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="text" value="${sessionScope.admin.userName }" name="userName" size="20" disabled="disabled"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        原密码：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="password" name="userPw" id="userPw" size="22"/>
						    </td>
						</tr>
						<tr> 
						    <td width="20%" class="pn-flabel pn-flabel-h">
						         新密码：
						    </td>
						    <td width="80%" class="pn-fcontent">
						        <input type="password" id="userPwNew" name="userPwNew" size="22"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        确认密码：
						    </td>
						       <td width="80%" class="pn-fcontent">
						           <input type="password" name="userPwNew1" id="userPwNew1" size="22"/>
						    </td>
						</tr>
						<tr>
						    <td width="20%" class="pn-flabel pn-flabel-h">
						        &nbsp;
						    </td>
					        <td width="80%" class="pn-fcontent">
					             <input type="button" value="修改" onclick="check1()"/>
					             &nbsp;&nbsp;&nbsp;
					             <input type="reset" value="重置"/>
					             <img id="indicator" src="<%=path %>/images/loading.gif" alt="Loading..." style="display:none"/>
					        </td>
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
