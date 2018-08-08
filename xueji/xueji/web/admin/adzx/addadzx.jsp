<%-- 
    Document   : addadzx
    Created on : 2018-1-11, 13:21:45
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加学生转休信息</title>
    </head>
    <body bgcolor="lightgreen">
        <form action="http://localhost:8080/xueji/admin/adzx/addadzxCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/adzxlook.jsp">转休查询</a></td>
                    <td>转休添加</td>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/updateadzx.jsp">转休修改</a></td>
                    <td><a href="http://localhost:8080/xueji/admin/adzx/deleteadzx.jsp">转休删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                     <th colspan="4" align="center">添加学生转休信息</th>
                 </tr>
                 <tr>
                     <td>转休编号</td>
                     <td><input type="text" name="Bno"/></td>
                 </tr>
                 <tr>
                     <td>学号</td>
                     <td><input type="text" name="Sno"/></td>
                 </tr>
                 <tr>
                     <td>变动日期</td>
                     <td><input type="text" name="Btime"/></td>
                 </tr>
                 <tr>
                     <td>变动类型</td>
                     <td><input type="text" name="Btype"/></td>
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
