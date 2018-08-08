<%-- 
    Document   : stjiben
    Created on : 2018-1-11, 10:48:40
    Author     : xiao
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学生毕业信息查询</title>
    </head>
    <body bgcolor="lightgreen">
        <table width="500">
            <div align="center"> 学生基本信息查询</div>
        </table>
        <br>
        <hr>
        <br>
         <table align="center"width="700"border=2" >
            <tr>
                <th colspan="3">查看学生基本信息</th>
            </tr>
            <tr>
                <td>学号</td>
                <td>姓名</td>
                <td>性别</td>
                <td>出生日期</td>
                <td>籍贯</td>
                <td>学院</td>
                <td>入学日期</td>
            </tr>
            <% 
                Connection con=null;
                Statement stmt=null;
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"sh","123456");
                stmt=con.createStatement();
                String sql="select * from student";
                rs=stmt.executeQuery(sql);
                while(rs.next()){
            %>                         
           <tr>
               <td><%=rs.getString("Sno")%></td>
               <td><%=rs.getString("Sname")%></td>
               <td><%=rs.getString("Ssex")%></td>  
               <td><%=rs.getString("Sbirth")%></td>
               <td><%=rs.getString("Snative")%></td>
               <td><%=rs.getString("Sdept")%></td>
               <td><%=rs.getString("Sent")%></td>
           </tr>
           <%
                }
           %>
        </table>
    </body>
</html>
