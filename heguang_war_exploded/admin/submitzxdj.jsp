<%@ page import="heguang.org.cn.DB" %>
<%@ page import="heguang.org.cn.SentEmail" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  Tucao: duanqifeng
  Date: 2018/7/14
  Time: 12:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>快递</title>
</head>
<body>
<%
    DB db = new DB();
    db.connectToDB();
    PrintWriter writer = response.getWriter();
    request.setCharacterEncoding("utf-8");

    String date = request.getParameter("date");
    String zxsName = request.getParameter("zxsName");

    String zxlb = request.getParameter("zxlb");
    String[] zxwts = request.getParameterValues("zxwt");
    String zxwt = "";
    for (int i=0;i<zxwts.length;++i){
        if (i==0){
            zxwt = zxwts[i];
        }else {
            zxwt = zxwt+";"+zxwts[i];
        }
    }

    String qzyy = request.getParameter("qzyy");
    String sfjsgxl = request.getParameter("sfjsgxl");
    String sfjsgjs = request.getParameter("sfjsgjs");
    String sfzs = request.getParameter("sfzs");
    String qita = request.getParameter("qita");
    String customerName = request.getParameter("customerName");
    String sex = request.getParameter("sex");
    String customerTel = request.getParameter("customerTel");
    String age = request.getParameter("age");
    String location = request.getParameter("location");
    String education = request.getParameter("education");
    String job = request.getParameter("job");
    String income = request.getParameter("income");
    String marriage = request.getParameter("marriage");
    String children = request.getParameter("children");
    String relationship = request.getParameter("relationship");
    String relationship_name = request.getParameter("relationship-name");
    String relationship_tel = request.getParameter("relationship-tel");

    if (zxlb.isEmpty()|| zxwt.isEmpty()|| qzyy.isEmpty()|| sfjsgxl.isEmpty()|| sfjsgjs.isEmpty()|| sfzs.isEmpty()|| qita.isEmpty()||customerName.isEmpty()
            ||sex.isEmpty()||customerTel.isEmpty()||age.isEmpty()||location.isEmpty()||education.isEmpty()||job.isEmpty()||income.isEmpty()
            ||marriage.isEmpty()||children.isEmpty()||relationship.isEmpty()||relationship_name.isEmpty()||relationship_tel.isEmpty()||date.isEmpty()){
        writer.print("<script>alert('请将信息填写完整！');window.history.back()</script>");
        return;
    }
    HttpSession httpSession =request.getSession();
    String svalue = (String) httpSession.getAttribute("name");
    boolean online = false;
    if (svalue!=null){
        online = true;
    }
    if (online){
        String kuaidiInfo = "\n 你已经登记成功";

        db.insertZXDJ(date,zxsName,zxlb, zxwt, qzyy, sfjsgxl, sfjsgjs, sfzs, qita, customerName, sex, customerTel, age, location, education,  job,  income,  marriage
                , children, relationship, relationship_name,  relationship_tel,svalue);

//        SentEmail.sendEmail_kuaidi("scuxiaoer@126.com",kuaidiInfo);
        writer.print("<script>alert('登记成功！');window.location='../home/myself.jsp'</script>");
    }else{
        writer.print("<script>alert('操作超时，请重新登录！');window.location='../login/login.html'</script>");
    }
%>
</body>
</html>
