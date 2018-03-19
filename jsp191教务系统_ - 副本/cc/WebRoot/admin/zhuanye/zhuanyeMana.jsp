<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<style type="text/css">
<!--
body {
	margin-left: 3px;
	margin-top: 0px;
	margin-right: 3px;
	margin-bottom: 0px;
}
.STYLE1 {
	color: #e1e2e3;
	font-size: 12px;
}
.STYLE6 {color: #000000; font-size: 12; }
.STYLE10 {color: #000000; font-size: 12px; }
.STYLE19 {
	color: #344b50;
	font-size: 12px;
}
.STYLE21 {
	font-size: 12px;
	color: #3b6375;
}
.STYLE22 {
	font-size: 12px;
	color: #295568;
}
a:link {font-size:12px; text-decoration:none; color:#344b50;}
a:visited {font-size:12px; text-decoration:none; color:#344b50;}
a:hover{font-size:12px; text-decoration:none; color:#FF0000;}
-->
</style>
		<script>
var  highlightcolor='#d5f4fe';
//此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
var  clickcolor='#51b2f6';
function  changeto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=highlightcolor&&source.id!="nc"&&cs[1].style.backgroundColor!=clickcolor)
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=highlightcolor;
}
}

function  changeback(){
if  (event.fromElement.contains(event.toElement)||source.contains(event.toElement)||source.id=="nc")
return
if  (event.toElement!=source&&cs[1].style.backgroundColor!=clickcolor)
//source.style.backgroundColor=originalcolor
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}

function  clickto(){
source=event.srcElement;
if  (source.tagName=="TR"||source.tagName=="TABLE")
return;
while(source.tagName!="TD")
source=source.parentElement;
source=source.parentElement;
cs  =  source.children;
//alert(cs.length);
if  (cs[1].style.backgroundColor!=clickcolor&&source.id!="nc")
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor=clickcolor;
}
else
for(i=0;i<cs.length;i++){
	cs[i].style.backgroundColor="";
}
}
</script>
	</head>

	<body>
		<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr>
				<td height="30">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td height="24" bgcolor="#353c44">
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td>
											<table width="100%" border="0" cellspacing="0" cellpadding="0">
												<tr>
													<td width="6%" height="19" valign="bottom">
														<div align="center">
															<img src="images/tb.gif" width="14" height="14" />
														</div>
													</td>
													<td width="94%" valign="bottom">
														<span class="STYLE1">专业基本信息列表</span>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<div align="right">
												<span class="STYLE1"> <img src="images/add.gif" width="10" height="10" /><a style="color: white;" href="<%=path %>/admin/zhuanye/zhuanyeAdd.jsp?xibieId=<s:property value="#request.xibieId"/>"> 添加 &nbsp;</a> </span><span class="STYLE1"> &nbsp;</span>
											</div>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td>
					<table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()" onmouseout="changeback()">
						<tr>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">专业编号</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">专业名称</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">专业简介</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">班级管理</span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
								<div align="center">
									<span class="STYLE10">基本操作</span>
								</div>
							</td>
						</tr>
                        <s:iterator value="#request.zhuanyeList" id="zhuanye">
                        <tr>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#zhuanye.zhuanyeBianhao"/></span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#zhuanye.zhuanyeName"/></span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<span class="STYLE10"><s:property value="#zhuanye.zhuanyeJieshao"/></span>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
									<a style="color: red" href="<%=path %>/banjiMana.action?zhuanyeId=<s:property value="#zhuanye.zhuanyeId"/>">班级管理</a>
								</div>
							</td>
							<td width="10%" height="20" bgcolor="#FFFFFF" class="STYLE6">
								<div align="center">
								    <span class="STYLE10"><img width="10" height="10" src="<%=path %>/images/edit.gif" />&nbsp;&nbsp;&nbsp;<a style="color: red" href="<%=path %>/zhuanyeEditPre.action?zhuanyeId=<s:property value="#zhuanye.zhuanyeId"/>">编辑</a></span>
								    &nbsp;&nbsp;&nbsp;&nbsp;
									<span class="STYLE10"><img width="10" height="10" src="<%=path %>/images/del.gif" />&nbsp;&nbsp;&nbsp;<a style="color: red" href="<%=path %>/zhuanyeDel.action?zhuanyeId=<s:property value="#zhuanye.zhuanyeId"/>">删除</a></span>
								</div>
							</td>
						</tr>
                        </s:iterator>
					</table>
					<br>
					<img src="<%=path %>/images/back.gif" onclick="javascript:history.go(-1);">
				</td>
			</tr>
		</table>
	</body>
</html>
