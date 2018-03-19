<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <style type="text/css">
		    body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		.STYLE1 {
			font-size: 12px;
			border-width:33px;
			color: #000000;
		}
		.STYLE5 {font-size: 12}
		.STYLE7 {font-size: 12px; color: #FFFFFF; }
    </style>
		<script language="javascript">
			function calender()
			{
				 var time=new Date();
				 var year=time.getYear();
				 var month=time.getMonth()+1;
				 var day=time.getDate();
				 var hour=time.getHours();
				 var minute=time.getMinutes();
				 var second=time.getSeconds();
				 if(minute<10)
				 {
				  minute="0"+minute;
				 }
				 if(second<10)
				 {
				  second="0"+second;
				 }
				 document.myform.date.value=year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
				 var mytime=setTimeout("calender()",1000);
			}
			</script>
  </head>
  
  <body onLoad="calender()">
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td height="57" background="<%=path %>/images/main_03.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td style="FONT-WEIGHT: bold; FONT-SIZE: 23pt; FILTER: Glow(Color=#00347F,Strength=4); WIDTH: 100%; COLOR: #ffffff; font-family: 黑体">
							     &nbsp;&nbsp;九州大学教务管理系统
							</td>
							<td width="281" valign="bottom">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="33" height="27">
											
										</td>
										<td width="248">
											<table width="225" border="0" align="center" cellpadding="0"
												cellspacing="0">
												<tr>
													<td height="17">
														<div align="right">
															<!--<img src="<%=path %>/images/pass.gif" width="69" height="17" />-->
														</div>
													</td>
													<td>
														<div align="right">
															<!--<img src="<%=path %>/images/user.gif" width="69" height="17" />-->
														</div>
													</td>
													<td>&nbsp;
														
													</td>
												</tr>
											</table>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="40" background="<%=path %>/images/main_10.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="194" height="40" background="<%=path %>/images/main_07.gif">&nbsp;
								
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="21">
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<!--  首页-->
											</div>
										</td>
										<td width="21" class="STYLE7">
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<!-- 后退-->
											</div>
										</td>
										<td width="21" class="STYLE7">
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<!-- 前进-->
											</div>
										</td>
										<td width="21" class="STYLE7">
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<!-- 刷新-->
											</div>
										</td>
										<td width="21" class="STYLE7">
										</td>
										<td width="35" class="STYLE7">
											<div align="center">
												<!-- 帮助-->
											</div>
										</td>
										<td>&nbsp;
											
										</td>
									</tr>
								</table>
							</td>
							<td width="248">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="16%">
											<span class="STYLE5"></span>
										</td>
										<td width="75%">
											<div align="center">
												<span class="STYLE7"><form name="myform" style="margin:0px;">
														服务器时间：
														<input type="text" name="date" value="" size="15"
															style="height:15px; width:100px; border:solid 1px #cadcb2; font-size:12px; color:#81b432;" />
													</form>
												</span>
											</div>
										</td>
										<td width="9%">&nbsp;
											
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td height="30" background="<%=path %>/images/main_31.gif">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="8" height="30">
								<img src="<%=path %>/images/main_28.gif" width="8" height="30" />
							</td>
							<td width="147" background="<%=path %>/images/main_29.gif">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="24%">&nbsp;
											
										</td>
										<td width="43%" height="20" valign="bottom" class="STYLE1">
											管理菜单
										</td>
										<td width="33%">&nbsp;
											
										</td>
									</tr>
								</table>
							</td>
							<td width="39">
								<img src="<%=path %>/images/main_30.gif" width="39" height="30" />
							</td>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td height="20" valign="bottom">
											<font style="font-size: 12px;font-weight: bold">
											    当前登录用户： <s:property value="#session.admin.userName"/>
											    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											    角色：系统管理员
											    
											</font>
										</td>
										<td valign="bottom" class="STYLE1">
											
										</td>
									</tr>
								</table>
							</td>
							<td width="17">
								<img src="<%=path %>/images/main_32.gif" width="17" height="30" />
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</body>
</html>
