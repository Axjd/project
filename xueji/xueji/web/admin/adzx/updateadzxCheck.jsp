<%-- 
    Document   : updateadzxCheck
    Created on : 2018-1-11, 19:03:03
    Author     : xiao
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理转休修改数据</title>
    </head>
    <body>
        <%
            String Xno=new String(request.getParameter("Xno").getBytes("ISO-8859-1"),"UTF-8");
            String Bno=new String(request.getParameter("Bno").getBytes("ISO-8859-1"),"UTF-8");
            String Sno=new String(request.getParameter("Sno").getBytes("ISO-8859-1"),"UTF-8");
            String Btime=new String(request.getParameter("Btime").getBytes("ISO-8859-1"),"UTF-8");
            String Btype=new String(request.getParameter("Btype").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","138248");
               st=con.createStatement();
               String sql="update xjd_zx set Bno='"+Bno+"',Sno='"+Sno+"',Btime="+Btime+",Btype='"+Btype+"'where Sno='"+Xno+"'";
               st.executeUpdate(sql);
                response.sendRedirect("http://localhost:8080/xueji/admin/adzx/adzxlook.jsp");    
           }
           catch(Exception e){
              %>         
              <center><font size="5" color="#FF0000">
             <b>修改失败</b>
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