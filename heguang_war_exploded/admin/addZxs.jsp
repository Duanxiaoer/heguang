<%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/17
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="submitZxsInfo.jsp">
        姓名：<input id="name" type="text" name="name" required>
        <br>
        性别：<input id="sex" type="text" maxlength="3" name="sex" required>
        <br>
        邮箱：<input id="email" type="email" name="email" required>
        <br>
        密码：<input id="pwd" type="password" name="pwd" required>
        <br>
        确认密码：<input id="pwdcheck" type="password" name="pwdcheck" required>
        <br>
        <input type="submit" value="提交">
    </form>
</body>
<script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>

</html>
