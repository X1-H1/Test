<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'chengjiChakan.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/tongyongService.js'></script>
	<script type='text/javascript' src='<%=path %>/dwr/interface/kechengService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	
	
	<script type="text/javascript">
	   function check()
	   {
	      if(document.from1.xuyuanId.value==0)
	      {
	          alert("请选择学院");
	          return;
	      }
	      if(document.from1.kechengId.value==0)
	      {
	          alert("请选择课程");
	          return;
	      }
	      else
	      {
	          document.from1.submit();
	      }
	   }
	   
	   function init()
	   {
	       tongyongService.findAllXuyuan(callBackXueyuan);
	       kechengService.findAllKecheng(callBackKecheng)
	   }
	   function callBackXueyuan(data)
	   {
	        DWRUtil.addOptions("xuyuanId",data,"xuyuanId","xuyuanName");
	   } 
	   function callBackKecheng(data)
	   {
	        DWRUtil.addOptions("kechengId",data,"kechengId","kechengName");
	   } 
	   
	   
	   
	   
	   
	   function xuyuanChange()
	   {
	      var xuyuanId=document.getElementById("xuyuanId").value;
	      if(xuyuanId!=0)
	      {
	          tongyongService.findAllXibei(xuyuanId,callBackXibie);
	      }
	      if(xuyuanId==0)
	      {
	          DWRUtil.removeAllOptions("xibieId");
              DWRUtil.addOptions("xibieId",{0:'--请选择系别--'});
	      }
	      
	   }
	   function callBackXibie(data)
	   {
	         DWRUtil.removeAllOptions("xibieId");
             DWRUtil.addOptions( "xibieId",{0:'--请选择系别--'});
             DWRUtil.addOptions("xibieId",data,"xibieId","xibieName");
	   }
	   
	   
	   
	   
	   
	   function xibieChange()
	   {
	      var xibieId=document.getElementById("xibieId").value;
	      if(xibieId!=0)
	      {
	          tongyongService.findAllZhuanye(xibieId,callBackZhuanye);
	      }
	      if(xibieId==0)
	      {
	          DWRUtil.removeAllOptions("zhuanyeId");
              DWRUtil.addOptions("zhuanyeId",{0:'--请选择专业--'});
	      }
	      
	   }
	   function callBackZhuanye(data)
	   {
	         DWRUtil.removeAllOptions("zhuanyeId");
             DWRUtil.addOptions( "zhuanyeId",{0:'--请选择专业--'});
             DWRUtil.addOptions("zhuanyeId",data,"zhuanyeId","zhuanyeName");
	   }
	   
	   
	   
	   
	   function zhuanyeChange()
	   {
	      var zhuanyeId=document.getElementById("zhuanyeId").value;
	      if(zhuanyeId!=0)
	      {
	          tongyongService.findAllBanji(zhuanyeId,callBackBanji);
	      }
	      if(zhuanyeId==0)
	      {
	          DWRUtil.removeAllOptions("banjiId");
              DWRUtil.addOptions("banjiId",{0:'--请选择班级--'});
	      }
	      
	   }
	   function callBackBanji(data)
	   {
	         DWRUtil.removeAllOptions("banjiId");
             DWRUtil.addOptions( "banjiId",{0:'--请选择班级--'});
             DWRUtil.addOptions("banjiId",data,"banjiId","banjiName");
	   }
	</script>
  </head>
  
  <body onload="init()">
      <form action="<%=path %>/chengjiChakan.action" name="from1" method="post">
           <table>
                <tr>
                    <td>
                        请选择学院：
                    </td>
                    <td>
                        <select name="xuyuanId" id="xuyuanId" onchange="xuyuanChange()">
                            <option value="0">---请选择学院---</option>
                        </select>
                        <select name="xibieId" id="xibieId" onchange="xibieChange()">
                            <option value="0">---请选择系别---</option>
                        </select>
                        <select name="zhuanyeId" id="zhuanyeId" onchange="zhuanyeChange()">
                            <option value="0">---请选择专业---</option>
                        </select>
                        <select name="banjiId" id="banjiId">
                            <option value="0">---请选择班级---</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        请选择课程：
                    </td>
                    <td>
                        <select name="kechengId" id="kechengId">
                            <option value="0">---请选择课程---</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                         
                    </td>
                    <td>
                        <input type="button" value="确定" onclick="check()">
                    </td>
                </tr>
           </table>
      </form>
  </body>
</html>

