<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/11
  Time: 10:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>录入工资</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

    DB db = new DB();
    db.connectToDB();

    PrintWriter writer = response.getWriter();

    //用户邮箱
    String email = (String) session.getAttribute("email");

    if (email==null){
        writer.print("<script>alert('登录过期，请重新登录！');window.location='../login/admin_login.html'</script>");
    }
    //录入的数据
    String name = request.getParameter("name");
    String type = request.getParameter("xmmc");
    String visitor = request.getParameter("lfz");
    String times = request.getParameter("byzxcs");
    String price = request.getParameter("dcfy");
    String lastbalance = request.getParameter("syjy");
    String totalprice = request.getParameter("byyf");
    String pay = request.getParameter("bysf");
    String balance = request.getParameter("byjy");
    String zzje = request.getParameter("zzje");
    String zcs = request.getParameter("zcs");
    String fcbl = request.getParameter("fcbl");
    String school = request.getParameter("out");
    String income = request.getParameter("income");
    String date = request.getParameter("date");
    boolean one = false;//是否插入

    String name1 = request.getParameter("name1");
    String type1 = request.getParameter("xmmc1");
    String visitor1 = request.getParameter("lfz1");
    String times1 = request.getParameter("byzxcs1");
    String price1 = request.getParameter("dcfy1");

    String lastbalance1 = request.getParameter("syjy1");
    String totalprice1 = request.getParameter("byyf1");
    String pay1 = request.getParameter("bysf1");
    String balance1 = request.getParameter("byjy1");

    String zzje1 = request.getParameter("zzje1");
    String zcs1 = request.getParameter("zcs1");
    String fcbl1 = request.getParameter("fcbl1");
    String school1 = request.getParameter("out1");
    String income1 = request.getParameter("income1");
    String date1 = request.getParameter("date1");
    boolean two = false;//是否插入


    String name2 = request.getParameter("name2");
    String type2 = request.getParameter("xmmc2");
    String visitor2 = request.getParameter("lfz2");
    String times2 = request.getParameter("byzxcs2");
    String price2 = request.getParameter("dcfy2");
    String lastbalance2 = request.getParameter("syjy2");
    String totalprice2 = request.getParameter("byyf2");
    String pay2 = request.getParameter("bysf2");
    String balance2 = request.getParameter("byjy2");
    String zzje2 = request.getParameter("zzje2");
    String zcs2 = request.getParameter("zcs2");
    String fcbl2 = request.getParameter("fcbl2");
    String school2 = request.getParameter("out2");
    String income2 = request.getParameter("income2");
    String date2 = request.getParameter("date2");
    boolean three = false;//是否插入

    String name3 = request.getParameter("name3");
    String type3 = request.getParameter("xmmc3");
    String visitor3 = request.getParameter("lfz3");
    String times3 = request.getParameter("byzxcs3");
    String price3 = request.getParameter("dcfy3");
    String lastbalance3 = request.getParameter("syjy3");
    String totalprice3 = request.getParameter("byyf3");
    String pay3 = request.getParameter("bysf3");
    String balance3 = request.getParameter("byjy3");
    String zzje3 = request.getParameter("zzje3");
    String zcs3 = request.getParameter("zcs3");
    String fcbl3 = request.getParameter("fcbl3");
    String school3 = request.getParameter("out3");
    String income3 = request.getParameter("income3");
    String date3 = request.getParameter("date3");
    boolean four = false;//是否插入


    String name4 = request.getParameter("name4");
    String type4 = request.getParameter("xmmc4");
    String visitor4 = request.getParameter("lfz4");
    String times4 = request.getParameter("byzxcs4");
    String price4 = request.getParameter("dcfy4");
    String lastbalance4 = request.getParameter("syjy4");
    String totalprice4 = request.getParameter("byyf4");
    String pay4 = request.getParameter("bysf4");
    String balance4 = request.getParameter("byjy4");
    String zzje4 = request.getParameter("zzje4");
    String zcs4 = request.getParameter("zcs4");
    String fcbl4 = request.getParameter("fcbl4");
    String school4 = request.getParameter("out4");
    String income4 = request.getParameter("income4");
    String date4 = request.getParameter("date4");
    boolean five = false;//是否插入


    if (name.isEmpty()&&name1.isEmpty()&&name2.isEmpty()&&name3.isEmpty()&&name4.isEmpty()){
        writer.print("<script>alert('请至少录入一条记录再提交。');window.history.back()</script>");
    }


    if (!name.isEmpty()){
        if (name.length()<2 || type.isEmpty() || visitor.isEmpty()|| times.isEmpty()|| price.isEmpty()||
                lastbalance.isEmpty()|| totalprice.isEmpty()|| pay.isEmpty()|| balance.isEmpty()|| zzje.isEmpty()|| zcs.isEmpty()||
                fcbl.isEmpty()|| school.isEmpty()|| income.isEmpty()|| date.isEmpty()) {
            writer.print("<script>alert('第一条信息填写错误，姓名至少两个字，收入和时间不能为空！！！');window.history.back()</script>");
            return;//不在执行之后的代码
        }else {
            one = true;
        }
    }

    if (!name1.isEmpty()){
        if (name1.length()<2 || type1.isEmpty() || visitor1.isEmpty()|| times1.isEmpty()|| price1.isEmpty()||
                lastbalance1.isEmpty()|| totalprice1.isEmpty()|| pay1.isEmpty()|| balance1.isEmpty()|| zzje1.isEmpty()|| zcs1.isEmpty()||
                fcbl1.isEmpty()|| school1.isEmpty()|| income1.isEmpty()|| date1.isEmpty()) {
            writer.print("<script>alert('第二条信息填写错误，姓名至少两个字，收入和时间不能为空！！！');window.history.back()</script>");
            return;//不在执行之后的代码
        }else {
            two = true;
        }
    }

    if (!name2.isEmpty()){
        if (name2.length()<2 || type2.isEmpty() || visitor2.isEmpty()|| times2.isEmpty()|| price2.isEmpty()||
                lastbalance2.isEmpty()|| totalprice2.isEmpty()|| pay2.isEmpty()|| balance2.isEmpty()|| zzje2.isEmpty()|| zcs2.isEmpty()||
                fcbl2.isEmpty()|| school2.isEmpty()|| income2.isEmpty()|| date2.isEmpty()) {
            writer.print("<script>alert('第三条信息填写错误，姓名至少两个字，收入和时间不能为空！！！');window.history.back()</script>");
            return;//不在执行之后的代码
        }else {
            three = true;
        }
    }

    if (!name3.isEmpty()){
        if (name3.length()<2 || type3.isEmpty() || visitor3.isEmpty()|| times3.isEmpty()|| price3.isEmpty()||
                lastbalance3.isEmpty()|| totalprice3.isEmpty()|| pay3.isEmpty()|| balance3.isEmpty()|| zzje3.isEmpty()|| zcs3.isEmpty()||
                fcbl3.isEmpty()|| school3.isEmpty()|| income3.isEmpty()|| date3.isEmpty()) {
            writer.print("<script>alert('第四条信息填写错误，姓名至少两个字，收入和时间不能为空！！！');window.history.back()</script>");
            return;//不在执行之后的代码
        }else {
            four = true;
        }
    }

    if (!name4.isEmpty()){
        if (name4.length()<2 || type4.isEmpty() || visitor4.isEmpty()|| times4.isEmpty()|| price4.isEmpty()||
                lastbalance4.isEmpty()|| totalprice4.isEmpty()|| pay4.isEmpty()|| balance4.isEmpty()|| zzje4.isEmpty()|| zcs4.isEmpty()||
                fcbl4.isEmpty()|| school4.isEmpty()|| income4.isEmpty()|| date4.isEmpty()) {
            writer.print("<script>alert('信息填写错误，姓名至少两个字，收入和时间不能为空！！！');window.history.back()</script>");
            return;//不在执行之后的代码
        }else {
            five = true;
        }
    }

    //所有记录都正确是才会执行下面的代码
    if (one){
        db.insertGZ(name,type,visitor,times, price, lastbalance, totalprice, pay, balance, zzje, zcs, fcbl, school, income, date, email);
        writer.print("<script>alert('第1条录入完成');</script>");
    }
    if (two){
        db.insertGZ(name1,type1,visitor1,times1, price1, lastbalance1, totalprice1, pay1, balance1, zzje1, zcs1, fcbl1, school1, income1, date1, email);
        writer.print("<script>alert('第2条录入完成');</script>");
    }
    if (three){
        db.insertGZ(name2,type2,visitor,times2, price2, lastbalance2, totalprice2, pay2, balance2, zzje2, zcs2, fcbl2, school2, income2, date2, email);
        writer.print("<script>alert('第3条录入完成');</script>");
    }
    if (four){
        db.insertGZ(name3,type3,visitor3,times3, price3, lastbalance3, totalprice3, pay3, balance3, zzje3, zcs3, fcbl3, school3, income3, date3, email);
        writer.print("<script>alert('第4条录入完成');</script>");
    }
    if (five){
        db.insertGZ(name4,type4,visitor4,times4, price4, lastbalance4, totalprice4, pay4, balance4, zzje4, zcs4, fcbl4, school4, income4, date4, email);
        writer.print("<script>alert('第5条录入完成');</script>");
    }

    writer.print("<script>window.location='ckgzjl.jsp'</script>");

%>
</body>
</html>
