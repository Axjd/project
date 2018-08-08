<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            ul { list-style-type: none;}
            #po{}
            /* CSS Document */
#s_head {
    margin: 0px auto;
    height: 20px;
}

#menu {
    height: 40px;
    background-image: url(images/menu_bg.gif);
    padding:0;
    font-size: 14px;
    font-weight: bold;
    color: #fff;
    text-align: center;
    margin-top: 8px;
}
#menu ul {
    background-image: url(images/menu_left.gif);
    height: 40px;
    line-height: 10px;
    padding-left: 15px;
    background-repeat: no-repeat;
    background-position: left;
    list-style:none;
   
}
#menu ul li {
    float: left;
    margin-top: 4px;

}
#menu ul li a {
    display: block;
    height: 24px;
    text-decoration: none;
    padding-top: 12px;
}

#menu_left a
{
    color: #ffffff;
}
#menu_left a:hover {
    background-image: url(images/menu_a_bg03.gif);
    color:#333333;
    text-decoration: none;
}
#m_01{
    width: 65px;
}
#m_01 a:hover{
    background-image: url(images/menu_a_bg02.gif);
}
#m_02,#m_03,#m_04,#m_05,#m_06,#m_07,#m_08 {
    width: 94px;
}
#m_07 a,#m_08 a {

}

.menu_ge {
    width: 2px;
    height: 36px;
    background-image: url(images/menu_ge.gif);
}

          
        </style>

    </head>
    <body>
            <div id="s_head">
                <div id="menu">
                    <ul id="menu_left">
                        <li id="m_01"><s:a  id="a_01" action="queryPost" target="main">首&nbsp;页</s:a></li>
                        <li class="menu_ge"></li>
                        <li id="m_03"><a href="addPost.jsp" target="main">发&nbsp;帖</a></li>
                            <li class="menu_ge"></li>
                        <li id="m_04"><s:a  action="queryMy" target="main">我的帖子</s:a></li>
                        <li class="menu_ge"></li>
                         <li id="m_07"><s:a action="updateUser" target="main">个人资料</s:a></li>         
                        <li class="menu_ge"></li>
                        <li id="m_08"><s:a action="logout.action" target="_parent">退出</s:a></li>
                    </ul>
                </div>
            </div>
        </div>

    </body>
</html>
