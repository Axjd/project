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
    
    <title>My JSP 'showPost.jsp' starting page</title>
    
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
	<style type="text/css">
            table{ border-collapse: collapse; width: 95%;}
            th, tr,td{ border: 1px solid silver; background-color: #E3F2E1;}
            th{ height: 32px;}
            .left_td{width:15%; text-align: left; padding-left:30px;  }
            .right_td{width:70%; text-align: left;  padding-left: 30px; vertical-align: text-top; background-color: white;}
            #replyDiv{display: block; margin-left: 50px;  }
            #myImg{ width: 128px; height:128px; }
            #pmain li{ margin: 8px ;}
            #fastReply{ margin-top: 30px;}
        </style>
  </head>
  
  <body>
   <center>
   <h3>主题：<s:property value="n.title"/></h3>
        <div id="pmain">
        <table>
            <th>作者</th><th>正文</th>
            <tr>
                <td class="left_td" valign="top">
                   <s:property value="n.author"/>  
                </td>
                <td class="right_td">
                    <h5>发帖时间： <s:date format="yyyy-MM-dd" name="n.posttime" /></h5>
                    <s:property value="n.content" escape="false" />                  
               </td>
            </tr>
  <!-- 回帖列表,循环tr，你懂得。。 -->  
           <s:iterator id="obj" value="n.replies">  
                <tr>
                    <td class="left_td" align="top" valign="top">
                      <s:property value="#obj.author"/> 
                    </td>
                    <td class="right_td">
                        <h5>回复时间： <s:date name="#obj.replytime" format="yyyy-MM-dd"/></h5>
                        <s:property value="#obj.content" escape="false"/>
                    </td>
                </tr>
            </s:iterator>
            </table>
             
          	<form action="postComment" method="post">
          <input type="hidden" name="id" value="<s:property value="n.id"/>"/>
			author：<s:property value="#session.login"/><br><br>
			context：<textarea  name="c.content" rows="5" clos="15" id="editor_id"></textarea><br><br>
			replytime：<input type="date" name="c.replytime"/><br><br> 
			<input type="submit" value="发表"> 
			</form>
  </div>
    </center>
  </body>
</html>
