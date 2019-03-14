<%@ page import="java.io.PrintWriter" %>
<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <%@ page contentType="text/html; charset=gb2312"%>
    <title>咨询登记</title>
    <link rel="stylesheet" media="screen" href="css/css.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />
    <style>
        table {
            border-collapse: collapse;
            border: none;
            background-color: #FFFFFF;
            width: 100%;
        }
        .c1{
            width: 100px;
            text-align: center;
            border-style: solid;
        }
        .c2{
            width: 100px;
            text-align: center;
            border-style: solid;
        }
        input::-webkit-input-placeholder {
        /* placeholder颜色  */
         color: #ff0000;
        }
        textarea::-webkit-input-placeholder {
        /* placeholder颜色  */
         color: #ff0000;
        }
    </style>
</head>
<body>
<div style="display:none"></div>
<%
    PrintWriter printWriter = response.getWriter();
    if (session.getAttribute("email") == null ){
        printWriter.print("<script>alert('登录超时，请重新登录');window.location='../login/login.html'</script>");
    }

    DB db = new DB();
    db.connectToDB();
    ResultSet resultSet = db.queryZxs();
%>
<form accept-charset="UTF-8" action="submitzxdj.jsp" method="post" id="msform">
    <!-- progressbar -->
    <ul class="fs-title" style="align-content: center;font-size: xx-large">
        <li class="active">咨询登记</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>
        <table style="width: 100%">
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">咨询时间:</h2></td>
                <td class="c2" >
                    <%
                        response.setCharacterEncoding("UTF-8");
                        request.setCharacterEncoding("UTF-8");

                        int date = Integer.parseInt(request.getParameter("date"));
                        int ks = Integer.parseInt(request.getParameter("ks"));
                        int js = Integer.parseInt(request.getParameter("js"));
                        String zxsEmail = request.getParameter("zxsEmail");

                        String info = "";
                        if (date<100101){
                            int xq = (date-100);
                            if (xq==7){
                                info = "每周日："+ks+":00~"+js+":00";
                            }else {
                                info = "每周"+xq+"："+ks+":00~"+js+":00";
                            }
                        }else {
                            info = date+"："+ks+":00~"+js+":00";
                        }
                    %>
                    <input style="width:100%;text-align: center;color: green" type="text" value="<%=info%>" name="date" readonly>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">咨询师:</h2></td>
                <td class="c2" >
                    <%
                        String zxsName = request.getParameter("zxsName");
                        int price = 800;//默认800百
                        try {
                            while (resultSet.next()){
                                if (resultSet.getString("name").equals(zxsName)){
                                    price = resultSet.getInt("price");
                                }
                            }
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                    %>
                    <input style="width:100%;text-align: center;color: green" id="zxsName" type="text" value="<%=zxsName%>（<%=price%>元/50分钟）" name="zxsName" readonly>
                    <input id="zxsEmail" type="email" value="<%=zxsEmail%>" hidden name="zxsEmail" readonly>
                    <input type="hidden" id="lfzEmail" value="<%=session.getAttribute("email").toString()%>">
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">本次费用(元):</h2></td>
                <td class="c2" >
                    <%
                        int totalPrice = price*(js-ks);
                    %>
                    <input style="width:100%;text-align: center;color: green" type="text" value="<%=totalPrice%>" name="totalPrice" readonly>
                </td>
            </tr>
            <tr>
                <td class="c1" align="left"><h2 class="fs-subtitle-1">咨询类别:</h2></td>
                <td class="c2" >
                    <div>
                        <nobr>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="crzx"  name="zxlb" checked value="成人咨询" />成人咨询
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="blzx" name="zxlb" value="伴侣咨询" />伴侣咨询
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="jtzx"  name="zxlb" value="家庭咨询" />家庭咨询
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="etqsnzx"  name="zxlb" value="儿童青少年咨询" />儿童青少年咨询（18周岁以下）
                            </label>
                        </nobr>
                    </div>
                </td>
            </tr>
            <tr>
                <td  class="c1"  align="left"><h2 class="fs-subtitle-1">以下哪些问题正在困扰你:</h2></td>
                <td class="c2" >
                    <div>
                        <nobr>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox"  id="zxqt" name="zxwt" checked value="其他" />其他
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="rjgx" name="zxwt" value="人际关系" />人际关系
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="hlqg"  name="zxwt" value="婚恋情感" />婚恋情感
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="qzgx" name="zxwt" value="亲子关系" />亲子关系
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="grcz"  name="zxwt" value="咨询师个人成长" />咨询师个人成长
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="wjgy"  name="zxwt" value="危机干预" />危机干预
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="zwts"  name="zxwt" value="自我探索" />自我探索
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="ycqxl"  name="zxwt" value="孕产期心理" />孕产期心理
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="lgbt"  name="zxwt" value="LGBT心理咨询" />LGBT心理咨询
                            </label>
                        </nobr>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">请具体描述求助的原因和问题，以及你期望达到的咨询效果:</h2></td>
                <td class="c2" >
                    <textarea id="qzyy" required style="width: 100%;height: 100px;overflow: scroll" maxlength="500" name="qzyy" placeholder="原因和问题"></textarea>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">你是否接受过心理咨询？</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myjsgxl" type="radio"  name="sfjsgxl" checked value="没有" />没有
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="jsgxl" type="radio"  name="sfjsgxl" value="有过" />有过
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">你是否接受过精神科相关的诊断或治疗？</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myjsgjs" type="radio"  name="sfjsgjs" checked value="没有" />没有
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="jsgjs" type="radio"  name="sfjsgjs" value="有过" />有过
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">你是否有过自伤/自杀的想法、计划或行为？？</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" type="radio" id="myzs" name="sfzs"  checked value="没有" />没有
                    </label>
                    <label>
                        <input style="display: inline;width: auto" type="radio" id="yzs"  name="sfzs" value="有过" />有过
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">你是否还有其他问题/要说的？</h2></td>
                <td class="c2" >
                    <textarea style="width: 100%;height: 100px;overflow: scroll" id="qita" maxlength="500" name="qita" placeholder="其他问题" ></textarea>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">姓名:</h2></td>
                <td class="c2" >
                    <input type="text" id="cname"  maxlength="30" name="customerName" placeholder="您的姓名" required/>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">性别:</h2></td>
                <td class="c2" >
                    <nobr>
                        <label>
                            <input style="display: inline;width: auto" id="male" type="radio" name="sex"  value="男" />男
                        </label>
                        <label>
                            <input style="display: inline;width: auto" id="female" type="radio" name="sex"  value="女"/>女
                        </label>
                        <label>
                            <input style="display: inline;width: auto" id="qtxb"type="radio" name="sex" checked value="其他"/>其他
                        </label>
                    </nobr>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">电话:</h2></td>
                <td class="c2" >
                    <input type="tel" id="ctel" maxlength="20" name="customerTel" placeholder="您的电话" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">年龄:</h2></td>
                <td class="c2" >
                    <input type="number" id="age" maxlength="20" name="age" placeholder="年龄" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">居住城市:</h2></td>
                <td class="c2" >
                    <input type="text" id="location" maxlength="20" name="location" placeholder="您居住城市" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">学历:</h2></td>
                <td class="c2" >
                    <input type="text" id="education" name="education" maxlength="40" placeholder="您的学历" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">从事行业:</h2></td>
                <td class="c2" >
                    <input type="text" id="job" name="job" maxlength="40" placeholder="工作" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">收入:</h2></td>
                <td class="c2" >
                    <input type="text" id="income" name="income" maxlength="40" placeholder="收入" required>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">婚姻状态:</h2></td>
                <td class="c2" >
                    <input type="text" id="marriage" name="marriage" maxlength="40" placeholder="婚姻状态" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">是否有子女:</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myzn" type="radio"  checked name="children" value="没有" />没有
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="yzn" type="radio"  name="children" value="有" />有
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">紧急联系人:</h2></td>
                <td class="c2" >
                    <nobr>
                        <input type="text" style="width: 33%" id="relationship" name="relationship" maxlength="40" placeholder="关系" required>
                        <input type="text" style="width: 33%" id="relationship-name" name="relationship-name" maxlength="40" placeholder="姓名" required>
                        <input type="tel" style="width: 33%" id="relationship-tel" name="relationship-tel" maxlength="40" placeholder="电话" required>
                    </nobr>
                </td>
            </tr>

        </table>
        <input type="submit" name="submit" class="action-button" value="提交" onclick="check()"/>
        <a href="home_menu.html">
            <input type="button" class="action-button" value="返回"/>
        </a>
    </fieldset>
</form>
<script src="js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="js/jquery.easing.min.js" type="text/javascript"></script>
<script src="js/jQuery.time.js" type="text/javascript"></script>
<br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br>

</body>
<script>
    window.onload = function() {
        var flag=confirm("是否使用上次咨询时填写的信息？");
        if(flag==true){
            zxsName=document.getElementById("zxsName").value;
            lfzEmail=document.getElementById("lfzEmail").value;
            $.ajax({
                url: "cxdj.jsp",
                type: "POST",
                data: {"zxsName": zxsName,"lfzEmail":lfzEmail},
                success: function (data) {

                    if(data[0].zxlb=="成人咨询")document.getElementById("crzx").checked=true;
                    else if(data[0].zxlb=="伴侣咨询")document.getElementById("blzx").checked=true;
                    else if(data[0].zxlb=="家庭咨询")document.getElementById("jtzx").checked=true;
                    else document.getElementById("etqsnzx").checked=true;
                    if(data[0].zxwt=="其他")document.getElementById("zxqt").checked=true;
                    else if(data[0].zxwt=="人际关系")document.getElementById("rjgx").checked=true;
                    else if(data[0].zxwt=="婚恋情感")document.getElementById("hlqg").checked=true;
                    else if(data[0].zxwt=="亲子关系")document.getElementById("qzgx").checked=true;
                    else if(data[0].zxwt=="咨询师个人成长")document.getElementById("grcz").checked=true;
                    else if(data[0].zxwt=="危机干预")document.getElementById("wjgy").checked=true;
                    else if(data[0].zxwt=="自我探索")document.getElementById("zwts").checked=true;
                    else if(data[0].zxwt=="孕产期心理")document.getElementById("ycqxl").checked=true;
                    else {
                        document.getElementById("lgbt").checked=true;
                    }
                    document.getElementById("qzyy").innerText=data[0].qzyy;
                    document.getElementById("jsgxl").checked=true;
                    if(data[0].sfjsgjs=="没有"){
                        document.getElementById("myjsgjs").checked=true;
                    }
                    else {
                        document.getElementById("jsgjs").checked=true;
                    }
                    if(data[0].sfzs=="没有")document.getElementById("myzs").checked=true;
                    else document.getElementById("yzs").checked=true;
                    document.getElementById("qita").innerText=data[0].qita;
                    document.getElementById("cname").value=data[0].cname;
                    if(data[0].sex=="男")document.getElementById("male").checked=true;
                    else if(data[0].sex=="女")document.getElementById("female").checked=true;
                    else document.getElementById("qtxb").checked=true;
                    document.getElementById("ctel").value=data[0].ctel;
                    document.getElementById("age").value=data[0].age;
                    document.getElementById("location").value=data[0].location;
                    document.getElementById("education").value=data[0].education;
                    document.getElementById("job").value=data[0].job;
                    document.getElementById("income").value=data[0].income;
                    document.getElementById("marriage").value=data[0].marriage;
                    if(data[0].children=="没有")document.getElementById("myzn").checked=true;
                    else document.getElementById("yzn").checked=true;
                    document.getElementById("relationship").value=data[0].relationship;
                    document.getElementById("relationship-name").value=data[0].relationship_name;
                    document.getElementById("relationship-tel").value=data[0].relationship_tel;
                }

            })
        }

    }
    function check(){
        var f = confirm("请确认信息无误！");
        if (f===true){
            $('form').unbind('submit');
            $('form').submit();
        }else {
            $('form').bind('submit',function(event){
                event.preventDefault();
            });
        }
    }
</script>
</html>