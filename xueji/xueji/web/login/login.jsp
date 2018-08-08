<%-- 
    Document   : login
    Created on : 2018-1-10, 20:49:30
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
    <body background="../image/tu.jpg" background-repeat=repeat>
            <table border="0" width="100%" height="299">
                    <tr>
                        <td width="10%" height="183" >&nbsp;</td>
                            <td width="80%" height="183" align="center" valign="middle">
                                <form name="form1" method="post" action="logincheck.jsp" onsubmit="return form1_onsubmit()">
                                    <div align="center">
                                        <p><font size="6" color=>学籍管理系统</font></p>
                                        <br>
                                         <table width="260" height="68" border="0">
                                         <tr>
                                            <td width="80">
                                            <font size="3" face="Arial,Helvetica,sans-serif">
                                             用户名：
                                             </font>
                                            </td>    
                                            <td width="155">
                                                <input name="userName" style="height:20px;width: 150px"size="50" maxlength="50">
                                            </td> 
                                         </tr>
                                         <tr>
                                            <td width="39">
                                            <font size="3" face="Arial,Helvetica,sans-serif">
                                            密码：
                                             </font>
                                            </td>    
                                            <td>
                                                <input name="password" style="height:20px;width:150px" size="50" maxlength="50"type="password">
                                            </td> 
                                         </tr>
                                        </table>
                                        <p align="center">
                                      <input type="radio" name="systemrole" value="student">学生&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                      <input type="radio" name="systemrole" value="administer">管理员</p> 
                                      <p align="center">
                                        <input type="submit" name="btnSubform" value="登录">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <input type="reset" name="reset" value="重填"></p> 
                                    </div>
                                </form>
                        </td>
                        <td width="10%" height="183"></td>
                 </tr>
        </table>
    </body>
</html>
