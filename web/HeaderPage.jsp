<%-- 
    Document   : HeaderPage
    Created on : 13 Oct, 2014, 4:01:13 PM
    Author     : Jarodiya Kinjal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
 System.out.println("######");
    String name="";
    String photo="";
    if(session.getAttribute("user")!=null){
        name=session.getAttribute("user").toString();
        photo=session.getAttribute("photo").toString();}
    else
               {
        %>
        <%--<jsp:forward page="/Home.jsp" />--%>
        <%
        }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <script type='text/javascript' src='js/logging.js'></script>
        <link rel="stylesheet" href="css/layout.css" type="text/css" />
    </head>
    <body>
        <div class="wrapper col1">
            <div id="topbar">
                <p>WelCome : <%=name%></p>
                <ul>
                    <li class="current">
                        <a href="Home.jsp"><span></span>Logout</a></li>
                     
                </ul>
                <br class="clear"/>
            </div>
        </div>
        
        <div class="wrapper col2">
            <div id="header">
                <div class="fl_left">
                    <table cellpadding="5px" cellspacing="0" border="0">
                        <tr>
                            <td><a href="#"><img src="images/Logo.png" alt="logo" /></a></td>
                            <td><h1><a href="#">Immunize and</a></h1><p><h3>eHealthcare</h3></p></td>
                        </tr>
                    </table>
                </div>
                <div class="fl_right" align="Right" > 
                <img src="Profile/<%=photo%>"height="100" width="100" alt="Image" ></img></div>
                <br class="clear" />
            </div>
        </div>
       
    </body>
</html>