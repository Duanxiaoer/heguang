<%--
  Created by IntelliJ IDEA.
  User: duanqifeng
  Date: 2019/1/16
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort()	+ path + "/";
%>
<!DOCTYPE>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Hello ECharts</title>
    <script src="../home/assets/js/echarts.min.js"></script>
    <script src="js/jquery-3.1.1.min.js"></script>
</head>
<body>
<div>

</div>
<div id="myDiv" style="height: 400px;width: 400px"></div>
</body>

<script type="text/javascript">
    function loadData(option,myChart) {
        $.ajax({
            type : 'post',
            url : '/Servlet',
            data : {},
            dataType : 'json',
            success : function(result) {
                if (result) {
                    //初始化xAxis[0]的data
                    option.xAxis.data = [];
                    for (var i=0; i<result.length; i++) {
                        option.xAxis.data.push(result[i].name);
                    }
                    //初始化series[0]的data
                    option.series.data = [];
                    for (var i=0; i<result.length; i++) {
                        option.series[0].data.push(result[i].income);
                    }
                    myChart.setOption(option);

                }
            },
            error : function(errorMsg) {
                alert("加载数据失败");
            }
        });
    }
    var myChart = echarts.init(document.getElementById('myDiv'));
    var option = {
        xAxis: {
            name:"id",
            data: [1,2,3,4]
        },
        yAxis: {
            name:"收入",
            type: 'value'
        },
        series: [{
            data: [1,2,3,4],
            type: 'line'
        }]
    };
    //加载数据到option
    loadData(option,myChart);
    //设置option
    myChart.setOption(option);
</script>
