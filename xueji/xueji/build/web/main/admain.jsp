<%-- 
    Document   : main
    Created on : 2018-1-10, 16:57:30
    Author     : xiao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>学籍管理主界面</title>
    </head>
        <frameset rows="*" cols="120,*" >
            <frame src="adleft.jsp" name="left" scrolling="no" />
            <frameset rows="70,*" cols="*">
                <frame src="top.jsp" name="top" scrolling="no"/>
                <frame src="bottom.jsp" name="main" />
            </frameset>
        </frameset>
</html>
