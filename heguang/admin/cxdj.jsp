<%@ page import="heguang.org.cn.DB" %>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="java.io.PrintWriter" %><%--
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
    PrintWriter o1 = response.getWriter();
    request.setCharacterEncoding("UTF-8");
    response.setContentType("application/json; charset=utf-8");
    String zxsName=request.getParameter("zxsName");
    String lfzEmail=request.getParameter("lfzEmail");
    DB db = new DB();
    db.connectToDB();
    System.out.println("开始查询！");
    JSONArray jsonArray=db.queryZXDJByemail(zxsName,lfzEmail);
    System.out.println(jsonArray.getJSONObject(0).toString());
    o1.print(jsonArray);
    o1.flush();
    o1.close();
%>
</body>
</html>
