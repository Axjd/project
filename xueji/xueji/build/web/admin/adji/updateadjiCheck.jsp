<%-- 
    Document   : updateadjiCheck
    Created on : 2018-1-11, 19:01:03
    Author     : xiao
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理学生基本信息修改数据</title>
    </head>
    <body>
        <%
            String Xno=new String(request.getParameter("Xno").getBytes("ISO-8859-1"),"UTF-8");
            String Sno=new String(request.getParameter("Sno").getBytes("ISO-8859-1"),"UTF-8");
            String Sname=new String(request.getParameter("Sname").getBytes("ISO-8859-1"),"UTF-8");
            String Ssex=new String(request.getParameter("Ssex").getBytes("ISO-8859-1"),"UTF-8");
            String Sbirth=new String(request.getParameter("Sbirth").getBytes("ISO-8859-1"),"UTF-8");
            String Snative=new String(request.getParameter("Snative").getBytes("ISO-8859-1"),"UTF-8");
            String Sdept=new String(request.getParameter("Sdept").getBytes("ISO-8859-1"),"UTF-8");
            String Sent=new String(request.getParameter("Sent").getBytes("ISO-8859-1"),"UTF-8");
            Connection con=null;
            Statement st=null;
           try{
               Class.forName("com.mysql.jdbc.Driver");
               String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
               con=DriverManager.getConnection(url,"root","138248");
               st=con.createStatement();
               String sql="update xjd_student set Sno='"+Sno+"',Sname='"+Sname+"',Ssex='"+Ssex+"',Sbirth="+Sbirth+",Snative='"+Snative+"',Sent="+Sent+",Sdept='"+Sdept+"'where Sno='"+Xno+"'";
               st.executeUpdate(sql);
               response.sendRedirect("http://localhost:8080/xueji/admin/adji/adjibenlook.jsp");    
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