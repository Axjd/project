<%-- 
    Document   : deleteadjiCheck
    Created on : 2018-1-11, 16:52:46
    Author     : xiao
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理基本信息删除数据</title>
    </head>
    <body>
        <%
            String Sno=new String(request.getParameter("Sno").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                 String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
                 con=DriverManager.getConnection(url,"root","138248");
                 st=con.createStatement();
                 String sql="delete from xjd_student where Sno='"+Sno+"'";
                 st.executeUpdate(sql);
                 response.sendRedirect("http://localhost:8080/xueji/admin/adji/adjibenlook.jsp");
                 
              }
              catch (Exception e){
                  %>         
             <center><font size="5" color="#FF0000">
             <b>删除失败</b>
             </font>
             </center>           
             <%    
                e.printStackTrace();
             }
            finally{
                st.close();
                con.close();
            }
        %>
    </body>
</html>