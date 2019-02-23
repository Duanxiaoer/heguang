<%@ page import="java.io.PrintWriter" %>
<%@ page import="heguang.org.cn.SentEmail" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/2/13
  Time: 5:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>联系我们</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    PrintWriter writer = response.getWriter();

    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String subject = request.getParameter("subject");
    String message = request.getParameter("message");

    if (name.equals("") || email.equals("") || phone.equals("") || subject.equals("") || message.equals("")){
        writer.print("<script>alert('请将信息填写完整！');</script>");
        return;
    }

    String info = "";
    info = "姓名："+name+"\n"+"邮箱："+email+"\n电话："+phone+"\n问题主题："+subject+"\n信息："+message;
    if (SentEmail.sendEmail_Contact("scuxiaoer@126.com",info)){
        writer.print("<script>alert('信息已收到，我们会尽快联系您的！');window.location='contact.jsp';</script>");
    }else {
        writer.print("<script>alert('信息发送失败。。。');window.history.back()</script>");
    }
%>
</body>
</html>
