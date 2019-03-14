<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/12
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>是否登录</title>
</head>
<body>
<%
    PrintWriter printWriter = response.getWriter();
    HttpSession httpSession = request.getSession();
    String name = (String) httpSession.getAttribute("name");

    if (name != null){
        printWriter.print("<script>window.location = 'index.jsp'</script>");
    }else{
        printWriter.print("<script>window.location = 'index.jsp'</script>");
    }
%>
</body>
</html>
