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
    
    <title>login</title>
	
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<title>学籍管理系统</title>
        <script ID="clientEventHandlersJS" LANGUAGE="javascript">//客户端验证用户名和密码
           <!--
           function form1_onsubmit(){
           if(form1.userName.value==""){
               alert("请填写用户名");
               form1.userName.focus();
               return false;
           }
           if(form1.password.value==""){
           alert("请填写密码！");
           form1.password.focus();
           return false;
           }
          }
           -->
        </script>
  </head>
  
    <body background="img/login.jpg" background-repeat=repeat>
            <table border="0" width="100%" height="299">
                    <tr>
                        <td width="10%" height="200" >&nbsp;</td>
                            <td width="80%" height="200" align="center" valign="middle">
                                <form name="form1" method="post" action="Login" onsubmit="return form1_onsubmit()">
                                    <div align="center">
                                        <p><font size="5" color=>贴吧管理系统</font></p>
                                        <br>
                                         <table width="260" height="68" border="0">
                                         <tr>
                                            <td width="80">
                                            <font size="3" face="Arial,Helvetica,sans-serif">
                                          	   用户名：
                                             </font>
                                            </td>    
                                            <td width="155">
                                                <input type="text" name="u.username" style="height:20px;width: 150px"size="50" maxlength="50">
                                            </td> 
                                         </tr>
                                         <tr>
                                            <td width="39">
                                            <font size="3" face="Arial,Helvetica,sans-serif">
                                         	   密码：
                                             </font>
                                            </td>    
                                            <td>
                                                <input name="u.password" style="height:20px;width:150px" size="50" maxlength="50"type="password">
                                            </td> 
                                         </tr>
                                         <tr>
                                            <td width="39">
                                            <font size="3" face="Arial,Helvetica,sans-serif">
                                         	 验证码：
                                             </font>
                                            </td>    
                                            <td>                                          
                                               <input style="width:65; height:20" type="text" name="checkCode" maxlength="4" label="验证码" >
                                               <img  height="20" width="80" src="SecurityCodeImageAction.action"
												alt="验证码" name="checkImg" id="checkImg"
												style="position:relative;  ;display: inline-block; vertical-align: middle;"
												onClick="document.getElementById('checkImg').src='SecurityCodeImageAction.action?timestamp='+ (new Date().getTime().toString(36)); return false" />
                                            </td> 
                                         </tr>
                                        </table>
                                        <p align="center">                
                                      <p align="center">
                                        <input type="submit" name="btnSubform" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <a href="register.jsp">注册</a></p> 
                                    </div>
                                </form>
                        </td>
                        <td width="10%" height="183"></td>
                 </tr>
        </table>
    </body>
</html>