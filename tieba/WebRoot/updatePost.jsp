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
    
    <title>My JSP 'updatePost.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" href="js/kindeditor/themes/default/default.css">
	<script charset="utf-8" src="js/kindeditor/kindeditor-all.js"></script>
	<script charset="utf-8" src="js/kindeditor/lang/zh-CN.js"></script>
	<script>
		KindEditor.ready(function(K) {
		window.editor= K.create('#editor_id');
		});
	</script>
  </head>
  
  <body>
   <form action="updatePost" method="post">
   <input type="hidden" name="n.id" value="<s:property value="n.id"/>"/> 
		title：<input type="text" name="n.title" value="<s:property value="n.title"/>"/><br><br>
		context：<textarea  rows="5" cols="15" name="n.content" id="editor_id"><s:property value="n.content"/></textarea><br><br>	 
		<input type="submit" value="保存"/> 
	</form>
  </body>
</html>
