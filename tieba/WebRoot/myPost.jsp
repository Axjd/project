<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myPost.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <table style="width:98%;">
                <tr style="background-color:#E7EFEF;">
                    <th style="width:10px;"></th>
                    <th style="text-align:left;">帖子标题</th>
                    <th>作者</th>
                    <th>发布时间</th>
                    <th>可选操作</th>
                </tr> 
 		
        <s:iterator id="post" value="list"> 
        <tr>
        <td><img src="images/folder_new.gif" style="display: inline-block; margin:4px 5px 0px 0px;" /></td>
		 <td style="text-align:left;" > <s:a action="queryOne?id=%{#post.id}"><s:property value="#post.title"/></s:a> </td>
		 <td style="text-align:center;"><s:property value="#post.author" /></td>  	
		 <td style="text-align:center;">
          <s:date name="#post.posttime" format="yyyy-MM-dd"/>
         </td>
         <td style="text-align:center;">
          <s:a onclick="return confirm('确认删除吗?');" action="deleteOne?id=%{#post.id}">删除</s:a>
    	/&nbsp;&nbsp;<s:a action="updateLoad?id=%{#post.id}">修改</s:a> 
         </td>
		</tr> 
    </s:iterator>
    

  </body>
</html>

