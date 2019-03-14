<%@ page import="heguang.org.cn.DB" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/12
  Time: 3:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除工资记录</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("id"));
    String tableName = request.getParameter("tableName");
    int cancel =Integer.parseInt(request.getParameter("cancel"));
    DB db = new DB();
    db.connectToDB();
    System.out.println("连接数据库成功，开始修改");
    db.updateCancelByID(tableName,id,cancel);
%>
</body>
</html>
