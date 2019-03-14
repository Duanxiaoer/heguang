<%@ page import="java.io.PrintWriter" %>
<%@ page import="heguang.org.cn.DB" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <%@ page contentType="text/html; charset=gb2312"%>
    <title>��ѯ�Ǽ�</title>
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
        /* placeholder��ɫ  */
         color: #ff0000;
        }
        textarea::-webkit-input-placeholder {
        /* placeholder��ɫ  */
         color: #ff0000;
        }
    </style>
</head>
<body>
<div style="display:none"></div>
<%
    PrintWriter printWriter = response.getWriter();
    if (session.getAttribute("email") == null ){
        printWriter.print("<script>alert('��¼��ʱ�������µ�¼');window.location='../login/login.html'</script>");
    }

    DB db = new DB();
    db.connectToDB();
    ResultSet resultSet = db.queryZxs();
%>
<form accept-charset="UTF-8" action="submitzxdj.jsp" method="post" id="msform">
    <!-- progressbar -->
    <ul class="fs-title" style="align-content: center;font-size: xx-large">
        <li class="active">��ѯ�Ǽ�</li>
    </ul>
    <!-- fieldsets -->
    <fieldset>
        <table style="width: 100%">
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">��ѯʱ��:</h2></td>
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
                                info = "ÿ���գ�"+ks+":00~"+js+":00";
                            }else {
                                info = "ÿ��"+xq+"��"+ks+":00~"+js+":00";
                            }
                        }else {
                            info = date+"��"+ks+":00~"+js+":00";
                        }
                    %>
                    <input style="width:100%;text-align: center;color: green" type="text" value="<%=info%>" name="date" readonly>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">��ѯʦ:</h2></td>
                <td class="c2" >
                    <%
                        String zxsName = request.getParameter("zxsName");
                        int price = 800;//Ĭ��800��
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
                    <input style="width:100%;text-align: center;color: green" id="zxsName" type="text" value="<%=zxsName%>��<%=price%>Ԫ/50���ӣ�" name="zxsName" readonly>
                    <input id="zxsEmail" type="email" value="<%=zxsEmail%>" hidden name="zxsEmail" readonly>
                    <input type="hidden" id="lfzEmail" value="<%=session.getAttribute("email").toString()%>">
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">���η���(Ԫ):</h2></td>
                <td class="c2" >
                    <%
                        int totalPrice = price*(js-ks);
                    %>
                    <input style="width:100%;text-align: center;color: green" type="text" value="<%=totalPrice%>" name="totalPrice" readonly>
                </td>
            </tr>
            <tr>
                <td class="c1" align="left"><h2 class="fs-subtitle-1">��ѯ���:</h2></td>
                <td class="c2" >
                    <div>
                        <nobr>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="crzx"  name="zxlb" checked value="������ѯ" />������ѯ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="blzx" name="zxlb" value="������ѯ" />������ѯ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="jtzx"  name="zxlb" value="��ͥ��ѯ" />��ͥ��ѯ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="radio" id="etqsnzx"  name="zxlb" value="��ͯ��������ѯ" />��ͯ��������ѯ��18�������£�
                            </label>
                        </nobr>
                    </div>
                </td>
            </tr>
            <tr>
                <td  class="c1"  align="left"><h2 class="fs-subtitle-1">������Щ��������������:</h2></td>
                <td class="c2" >
                    <div>
                        <nobr>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox"  id="zxqt" name="zxwt" checked value="����" />����
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="rjgx" name="zxwt" value="�˼ʹ�ϵ" />�˼ʹ�ϵ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="hlqg"  name="zxwt" value="�������" />�������
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="qzgx" name="zxwt" value="���ӹ�ϵ" />���ӹ�ϵ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="grcz"  name="zxwt" value="��ѯʦ���˳ɳ�" />��ѯʦ���˳ɳ�
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="wjgy"  name="zxwt" value="Σ����Ԥ" />Σ����Ԥ
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="zwts"  name="zxwt" value="����̽��" />����̽��
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="ycqxl"  name="zxwt" value="�в�������" />�в�������
                            </label>
                            <label>
                                <input style="display: inline;width: auto" type="checkbox" id="lgbt"  name="zxwt" value="LGBT������ѯ" />LGBT������ѯ
                            </label>
                        </nobr>
                    </div>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">���������������ԭ������⣬�Լ��������ﵽ����ѯЧ��:</h2></td>
                <td class="c2" >
                    <textarea id="qzyy" required style="width: 100%;height: 100px;overflow: scroll" maxlength="500" name="qzyy" placeholder="ԭ�������"></textarea>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">���Ƿ���ܹ�������ѯ��</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myjsgxl" type="radio"  name="sfjsgxl" checked value="û��" />û��
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="jsgxl" type="radio"  name="sfjsgxl" value="�й�" />�й�
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">���Ƿ���ܹ��������ص���ϻ����ƣ�</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myjsgjs" type="radio"  name="sfjsgjs" checked value="û��" />û��
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="jsgjs" type="radio"  name="sfjsgjs" value="�й�" />�й�
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">���Ƿ��й�����/��ɱ���뷨���ƻ�����Ϊ����</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" type="radio" id="myzs" name="sfzs"  checked value="û��" />û��
                    </label>
                    <label>
                        <input style="display: inline;width: auto" type="radio" id="yzs"  name="sfzs" value="�й�" />�й�
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">���Ƿ�����������/Ҫ˵�ģ�</h2></td>
                <td class="c2" >
                    <textarea style="width: 100%;height: 100px;overflow: scroll" id="qita" maxlength="500" name="qita" placeholder="��������" ></textarea>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">����:</h2></td>
                <td class="c2" >
                    <input type="text" id="cname"  maxlength="30" name="customerName" placeholder="��������" required/>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">�Ա�:</h2></td>
                <td class="c2" >
                    <nobr>
                        <label>
                            <input style="display: inline;width: auto" id="male" type="radio" name="sex"  value="��" />��
                        </label>
                        <label>
                            <input style="display: inline;width: auto" id="female" type="radio" name="sex"  value="Ů"/>Ů
                        </label>
                        <label>
                            <input style="display: inline;width: auto" id="qtxb"type="radio" name="sex" checked value="����"/>����
                        </label>
                    </nobr>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">�绰:</h2></td>
                <td class="c2" >
                    <input type="tel" id="ctel" maxlength="20" name="customerTel" placeholder="���ĵ绰" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">����:</h2></td>
                <td class="c2" >
                    <input type="number" id="age" maxlength="20" name="age" placeholder="����" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">��ס����:</h2></td>
                <td class="c2" >
                    <input type="text" id="location" maxlength="20" name="location" placeholder="����ס����" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">ѧ��:</h2></td>
                <td class="c2" >
                    <input type="text" id="education" name="education" maxlength="40" placeholder="����ѧ��" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">������ҵ:</h2></td>
                <td class="c2" >
                    <input type="text" id="job" name="job" maxlength="40" placeholder="����" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">����:</h2></td>
                <td class="c2" >
                    <input type="text" id="income" name="income" maxlength="40" placeholder="����" required>
                </td>
            </tr>
            <tr>
                <td class="c1"  align="left"><h2 class="fs-subtitle-1">����״̬:</h2></td>
                <td class="c2" >
                    <input type="text" id="marriage" name="marriage" maxlength="40" placeholder="����״̬" required>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">�Ƿ�����Ů:</h2></td>
                <td class="c2" >
                    <label>
                        <input style="display: inline;width: auto" id="myzn" type="radio"  checked name="children" value="û��" />û��
                    </label>
                    <label>
                        <input style="display: inline;width: auto" id="yzn" type="radio"  name="children" value="��" />��
                    </label>
                </td>
            </tr>
            <tr>
                <td  class="c1" align="left"><h2 class="fs-subtitle-1">������ϵ��:</h2></td>
                <td class="c2" >
                    <nobr>
                        <input type="text" style="width: 33%" id="relationship" name="relationship" maxlength="40" placeholder="��ϵ" required>
                        <input type="text" style="width: 33%" id="relationship-name" name="relationship-name" maxlength="40" placeholder="����" required>
                        <input type="tel" style="width: 33%" id="relationship-tel" name="relationship-tel" maxlength="40" placeholder="�绰" required>
                    </nobr>
                </td>
            </tr>

        </table>
        <input type="submit" name="submit" class="action-button" value="�ύ" onclick="check()"/>
        <a href="home_menu.html">
            <input type="button" class="action-button" value="����"/>
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
        var flag=confirm("�Ƿ�ʹ���ϴ���ѯʱ��д����Ϣ��");
        if(flag==true){
            zxsName=document.getElementById("zxsName").value;
            lfzEmail=document.getElementById("lfzEmail").value;
            $.ajax({
                url: "cxdj.jsp",
                type: "POST",
                data: {"zxsName": zxsName,"lfzEmail":lfzEmail},
                success: function (data) {

                    if(data[0].zxlb=="������ѯ")document.getElementById("crzx").checked=true;
                    else if(data[0].zxlb=="������ѯ")document.getElementById("blzx").checked=true;
                    else if(data[0].zxlb=="��ͥ��ѯ")document.getElementById("jtzx").checked=true;
                    else document.getElementById("etqsnzx").checked=true;
                    if(data[0].zxwt=="����")document.getElementById("zxqt").checked=true;
                    else if(data[0].zxwt=="�˼ʹ�ϵ")document.getElementById("rjgx").checked=true;
                    else if(data[0].zxwt=="�������")document.getElementById("hlqg").checked=true;
                    else if(data[0].zxwt=="���ӹ�ϵ")document.getElementById("qzgx").checked=true;
                    else if(data[0].zxwt=="��ѯʦ���˳ɳ�")document.getElementById("grcz").checked=true;
                    else if(data[0].zxwt=="Σ����Ԥ")document.getElementById("wjgy").checked=true;
                    else if(data[0].zxwt=="����̽��")document.getElementById("zwts").checked=true;
                    else if(data[0].zxwt=="�в�������")document.getElementById("ycqxl").checked=true;
                    else {
                        document.getElementById("lgbt").checked=true;
                    }
                    document.getElementById("qzyy").innerText=data[0].qzyy;
                    document.getElementById("jsgxl").checked=true;
                    if(data[0].sfjsgjs=="û��"){
                        document.getElementById("myjsgjs").checked=true;
                    }
                    else {
                        document.getElementById("jsgjs").checked=true;
                    }
                    if(data[0].sfzs=="û��")document.getElementById("myzs").checked=true;
                    else document.getElementById("yzs").checked=true;
                    document.getElementById("qita").innerText=data[0].qita;
                    document.getElementById("cname").value=data[0].cname;
                    if(data[0].sex=="��")document.getElementById("male").checked=true;
                    else if(data[0].sex=="Ů")document.getElementById("female").checked=true;
                    else document.getElementById("qtxb").checked=true;
                    document.getElementById("ctel").value=data[0].ctel;
                    document.getElementById("age").value=data[0].age;
                    document.getElementById("location").value=data[0].location;
                    document.getElementById("education").value=data[0].education;
                    document.getElementById("job").value=data[0].job;
                    document.getElementById("income").value=data[0].income;
                    document.getElementById("marriage").value=data[0].marriage;
                    if(data[0].children=="û��")document.getElementById("myzn").checked=true;
                    else document.getElementById("yzn").checked=true;
                    document.getElementById("relationship").value=data[0].relationship;
                    document.getElementById("relationship-name").value=data[0].relationship_name;
                    document.getElementById("relationship-tel").value=data[0].relationship_tel;
                }

            })
        }

    }
    function check(){
        var f = confirm("��ȷ����Ϣ����");
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