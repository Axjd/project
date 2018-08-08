<%-- 
    Document   : stby
    Created on : 2018-1-11, 10:49:07
    Author     : xiao
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生毕业信息查询</title>
    </head>
    <body bgcolor="lightgreen">
        <table width="500">
            <div align="center"> 学生毕业信息查询</div>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="3">查看学生毕业信息</th>
            </tr>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>毕业日期</td>
                <td>学分</td>
            </tr>
            <%
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"sh","123456");
                stmt=con.createStatement();
                String sql="select * from gra";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("Sno")%></td>
               <td><%=rs.getString("Sname")%></td>
               <td><%=rs.getString("Gtime")%></td>  
               <td><%=rs.getString("Gcredit")%></td>
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>
