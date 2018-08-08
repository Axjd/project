<%-- 
    Document   : addadji
    Created on : 2018-1-11, 13:23:59
    Author     : xiao
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>添加学生基本信息</title>
    </head>
    <body bgcolor="lightgreen">
        <form action="http://localhost:8080/xueji/admin/adji/addadjiCheck.jsp" method="post">
            <table align="center"width="500" >
                <tr>
                    <td><a href="http://localhost:8080/xueji/admin/adji/adjibenlook.jsp">信息查询</a></td>
                    <td>信息添加</td>
                    <td><a href="http://localhost:8080/xueji/admin/adji/updateadji.jsp">信息修改</a></td>
                    <td><a href="http://localhost:8080/xueji/admin/adji/deleteadji.jsp">信息删除</a></td>
                </tr>
            </table>
            <br>
            <hr>
            <br>
            <table align="center"width="300" >
                 <tr>
                     <th colspan="4" align="center">添加学生基本信息</th>
                 </tr>               
                 <tr>
                     <td>学号</td>
                     <td><input type="text" name="Sno"/></td>
                 </tr>
                 <tr>
                     <td>姓名</td>
                     <td><input type="text" name="Sname"/></td>
                 </tr>
                 <tr>
                     <td>性别</td>
                     <td><input type="text" name="Ssex"/></td>
                 </tr>   
                 <tr>
                     <td>出生日期</td>
                     <td><input type="text" name="Sbirth"/></td>
                 </tr>
                 <tr>
                     <td>籍贯</td>
                     <td><input type="text" name="Snative"/></td>
                 </tr>
                 <tr>
                     <td>学院</td>
                     <td><input type="text" name="Sdept"/></td>
                 </tr>
                 <tr>
                     <td>入学日期</td>
                     <td><input type="text" name="Sent"/></td>
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