<%@ page import="heguang.org.cn.DB" %>
<%@ page import="sun.util.calendar.BaseCalendar" %>
<%@ page import="java.sql.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
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
    String Uname = request.getParameter("Uname");
    String Uemail = request.getParameter("Uemail");
    String WIDout_trade_no = request.getParameter("WIDout_trade_no");
    String WIDsubject = request.getParameter("WIDsubject");
    String WIDbody = request.getParameter("WIDbody");
    int WIDtotal_amount = Integer.parseInt(request.getParameter("WIDtotal_amount"));
    DB db = new DB();
    db.connectToDB();

    //此处支付宝订单号为时间

    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
    long lt = new Long(WIDout_trade_no);
    Date date = new Date(lt);
    String dateString =  simpleDateFormat.format(date);

    db.insertAlipay(Uemail,Uname,WIDout_trade_no,dateString,String.valueOf(WIDtotal_amount));
    db.updateYuE(session.getAttribute("email").toString(),WIDtotal_amount);

    out.print("<script>alert('充值成功！');window.location = '../admin/yhcz.jsp' </script>");
%>
</body>
</html>
