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
    <title>更改权限</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    int id = Integer.parseInt(request.getParameter("id"));
    String tableName = request.getParameter("tableName");
    int bjzl=Integer.parseInt(request.getParameter("bjzl"));
    DB db = new DB();
    db.connectToDB();
    db.updateZXSBjzlById(tableName,id,bjzl);
    System.out.println("修改成功！");
%>
</body>
</html>
