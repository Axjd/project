<%-- 
    Document   : addadbyCheck
    Created on : 2018-1-11, 15:13:24
    Author     : xiao
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理毕业添加数据</title>
    </head>
    <body>
        <%
            String Gno=new String(request.getParameter("Gno").getBytes("ISO-8859-1"),"UTF-8");
            String Sno=new String(request.getParameter("Sno").getBytes("ISO-8859-1"),"UTF-8");
            String Gtime=new String(request.getParameter("Gtime").getBytes("ISO-8859-1"),"UTF-8");
            String Gcredit=new String(request.getParameter("Gcredit").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","138248");
               st=con.createStatement();
               String sql="insert into xjd_by(Gno,Sno,Gtime,Gcredit) values ('"+Gno+"','"+Sno+"',"+Gtime+",'"+Gcredit+"')";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/xueji/admin/adby/adbylook.jsp");    
           }
           catch(Exception e){
               %>         
             <center><font size="5" color="#FF0000">
             <b>添加失败</b>
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