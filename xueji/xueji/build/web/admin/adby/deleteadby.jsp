<%-- 
    Document   : deleteadby
    Created on : 2018-1-11, 13:20:45
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>毕业删除</title>
    </head>
    <body bgcolor="lightgreen">
        <form action="http://localhost:8080/xueji/admin/adby/deleteadbyCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/xueji/admin/adby/adbylook.jsp">毕业查询</a></td>
                    <td><a href="http://localhost:8080/xueji/admin/adby/addadby.jsp">毕业添加</td>
                    <td><a href="http://localhost:8080/xueji/admin/adby/updateadby.jsp">毕业修改</a></td>
                    <td>毕业信息删除</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center">
                <tr>
                    <th colspan="2">删除学生毕业信息</th>
                </tr>
                <tr>
                    <td>学号</td>
                    <td><input type="text" name="Sno"/>输入要删除的毕业学生学号</td>
                </tr>
                <tr align="center">
                     <td colspan="2">
                        <input type="submit" name="sure" value="确认"/>
                        &nbsp; &nbsp; &nbsp; &nbsp;
                        <input name="clear"type="reset"value="取消"/>
                     </td>
                </tr>
             </table>
        </form>
    </body>
</html>