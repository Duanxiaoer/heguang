<%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2018/6/27
  Time: 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.*" %>
<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head>
    <title>验证咨询师身份</title>
</head>
<body>
<%
    DB db = new DB();
    db.connectToDB();
    PrintWriter writer = response.getWriter();
    String email=request.getParameter("email");
    String pwd = request.getParameter("password");

    if (email.length()<1||pwd.length()<1){
        writer.print("<script>alert('账号和密码不能为空！');window.history.back()</script>");
        return;
    }

    //0 未注册  1 注册密码不对  2 登录成功
    int status = db.checkZxs(email,pwd);
    System.out.println(status);
    String zxsName = db.getUsername();
    response.setCharacterEncoding("utf-8");

    switch (status){
        case 0:
            writer.print("<script>alert('未注册！');window.history.back()</script>");
            break;
        case 1:
            writer.print("<script>alert('密码错误！');window.history.back()</script>");
            break;
        case 2:
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("email",email);
            httpSession.setAttribute("name", zxsName);
            httpSession.setAttribute("zxsName", zxsName);
            writer.print("<script>window.location='../zxs/zxs.jsp'</script>");
            break;
    }
    writer.flush();
    writer.close();
%>
</body>
</html>