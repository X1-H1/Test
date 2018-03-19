<%@ page language="java" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script type="text/javascript">
function checkform()
{
  var strs=document.upform.file.value;
  if(strs=="")
  {
      alert("请选择要上传的图片!");
	  return false;     
  }  
  var n1=strs.lastIndexOf('.')+1;
  var fileExt=strs.substring(n1,n1+3).toLowerCase()
  if(fileExt!="jpg"&&fileExt!="gif"&&fileExt!="jpeg"&&fileExt!="bmp"&&fileExt!="png")
  {
	  alert('系统仅支持jpg、gif、jpeg、bmp、png后缀图片上传!');
	  return false;
  }
}
</script>
</head>
<body topmargin="20" leftmargin="5">

<form action="<%=path %>/upload/upPic.jsp" method="post" enctype="multipart/form-data" name="upform" onSubmit="return checkform();">
    <input name="file" id="file" type="file" class="input" onKeyDown="javascript:alert('此信息不能手动输入');return false;" />
    <input name="Submit" type="submit" class="button" value="上 传" />
</form>
</body>
</html>