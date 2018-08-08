<%-- 
    Document   : login
    Created on : 2018-1-10, 20:49:30
    Author     : xiao
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>数据处理页面</title>
    </head>
    <body>
        <%
            String userName =new String(request.getParameter("userName").getBytes("ISO-8859-1"),"UTF-8");
            String password =new String(request.getParameter("password").getBytes("ISO-8859-1"),"UTF-8");
            String chioce =new String(request.getParameter("systemrole").getBytes("ISO-8859-1"),"UTF-8");
            if(chioce.equals("administer")){
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            if(userName.equals("")) {
                response.sendRedirect("login.jsp");
            }
            try{
                Class.forName("com.mysql.jdbc.Driver");
                /*url后面加的?useUnicode=true&characterEncoding=gbk，是为了处理向数据库中添加数据时出现乱码的问题。*/
                String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"root","138248");
                st=con.createStatement();
                String query="select * from xjd_user where Yname='" + userName + "'"+"and Ypass='"+password+"'"+"and Ytype='"+1+"'";
                rs=st.executeQuery(query);
                if(rs.next()){                   
                        response.sendRedirect("../main/admain.jsp");
                    }else{
                        response.sendRedirect("login.jsp");
                    }
              }catch(Exception e){
                  e.printStackTrace();
              }finally{
                  rs.close();
                  st.close();
                  con.close();
             }
            }
            else if(chioce.equals("student")){
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
            if(userName.equals("")) {
                response.sendRedirect("login.jsp");
            }
            try{
                Class.forName("com.mysql.jdbc.Driver");
                /*url后面加的?useUnicode=true&characterEncoding=gbk，是为了处理向数据库中添加数据时出现乱码的问题。*/
                String url="jdbc:mysql://localhost:3306/xjd?useUnicode=true&characterEncoding=gbk";
                con=DriverManager.getConnection(url,"sh","123456");
                st=con.createStatement();
                String query="select * from xjd_user where Yname='" + userName + "'"+"and Ypass='"+password+"'"+"and Ytype='"+0+"'";
                rs=st.executeQuery(query);
                if(rs.next()){                   
                        response.sendRedirect("../main/stmain.jsp");
                    }else{
                        response.sendRedirect("login.jsp");
                    }
              }catch(Exception e){
                  e.printStackTrace();
              }finally{
                  rs.close();
                  st.close();
                  con.close();
             }
            }
        %>
    </body>
</html>