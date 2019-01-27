<%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/22
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>预约咨询</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    String aname = request.getParameter("aname");
    String aemail = request.getParameter("aemail");
    String adate = request.getParameter("adate");
    String aphone = request.getParameter("aphone");
    String amessage = request.getParameter("amessage");

    System.out.println(adate);
%>
</body>
</html>
