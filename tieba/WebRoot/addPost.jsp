<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <form action="addPost" method="post">
		title：<input type="text" name="n.title"/><br><br>
		context：<textarea  name="n.content" rows="5" clos="15" id="editor_id"></textarea><br><br>
		posttime：<input type="date" name="n.posttime"/><br><br> 
		<input type="submit" value="提交"> 
	</form>

	
  </body>
</html>
