<%-- 
    Document   : updateadby
    Created on : 2018-1-11, 13:21:23
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>修改学生毕业信息</title>
    </head>
    <body bgcolor="lightgreen">
        <form action="http://localhost:8080/xueji/admin/adby/updateadbyCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/xueji/admin/adby/adbylook.jsp">毕业查询</a></td>
                    <td><a href="http://localhost:8080/xueji/admin/adby/addadby.jsp">毕业添加</a></td>
                    <td>毕业修改</td>
                    <td><a href="http://localhost:8080/xueji/admin/adby/deleteadby.jsp">毕业删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br><table align="center"width="300" >
                 <tr>
                     <th colspan="4" align="center">修改学生毕业信息</th>
                 </tr>
                 <tr>
                     <td>修改的学号</td>
                     <td><input type="text" name="Xno"/></td>
                 </tr>
                 <tr>
                     <td>毕业编号</td>
                     <td><input type="text" name="Gno"/></td>
                 </tr>
                 <tr>
                     <td>学号</td>
                     <td><input type="text" name="Sno"/></td>
                 </tr>
                 <tr>
                     <td>毕业日期</td>
                     <td><input type="text" name="Gtime"/></td>
                 </tr>
                 <tr>
                     <td>学分</td>
                     <td><input type="text" name="Gcredit"/></td>
                 </tr>             
                <tr align="center">
                     <td colspan="2">
                         <input name="sure"type="submit"value="确认">
                         &nbsp; &nbsp; &nbsp; &nbsp;
                         <input name="clear"type="reset"value="取消">
                     </td>
                </tr>
            </table>
        </form>
    </body>
</html>

