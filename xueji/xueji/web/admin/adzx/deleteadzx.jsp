<%-- 
    Document   : deleteadzx
    Created on : 2018-1-11, 13:22:13
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>转休删除</title>
    </head>
    <body bgcolor="lightgreen">
        <form action="http://localhost:8080/xueji/admin/adzx/deleteadzxCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/adzxlook.jsp">转休查询</a></td>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/addadzx.jsp">转休添加</td>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/updateadzx.jsp">转休修改</a></td>
                    <td>转休删除</td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center">
                <tr>
                    <th colspan="2">删除学生转休信息</th>
                </tr>
                <tr>
                    <td>学号</td>
                    <td><input type="text" name="Sno"/>输入要删除的转休学生学号</td>
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