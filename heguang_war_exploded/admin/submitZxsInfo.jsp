<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/22
  Time: 11:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加咨询师</title>
</head>
<body>
<%
    DB db = new DB();
    db.connectToDB();
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    String email = request.getParameter("email");
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String pwd = request.getParameter("pwd");
    String pwdcheck = request.getParameter("pwdcheck");

    PrintWriter writer = response.getWriter();

    if (email.equals("") || name.equals("") || sex.equals("") || pwd.equals("") || pwdcheck.equals("")){
        writer.print("<script>alert('请将信息填写完整！');window.history.back()</script>");
    }else {
        if (pwd.equals(pwdcheck)){
                db.insertZxsInfo(email,pwd,name,sex);
                writer.print("<script>alert('添加成功！');window.location = 'home_menu.html'</script>");
        }else {
            writer.print("<script>alert('两次密码不一样！');window.history.back()</script>");
        }
    }

%>
</body>
</html>
