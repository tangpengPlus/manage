<!DOCTYPE html>
<html lang="en">
  <head>
 [#include "/base/base.ftl"/]
 
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${base}/img/favicon.png">

    <!-- Bootstrap core CSS -->
    <link href="${base}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${base}/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="${base}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="${base}/assets/morris.js-0.4.3/morris.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="${base}/css/style.css" rel="stylesheet">
    <link href="${base}/css/style-responsive.css" rel="stylesheet" />
  
  
  
  
  	<style>
  body{padding: 20px;}
  .demo-input{padding-left: 10px; height: 38px; min-width: 262px; line-height: 38px; border: 1px solid #e6e6e6;  background-color: #fff;  border-radius: 2px;}
  .demo-footer{padding: 50px 0; color: #999; font-size: 14px;}
  .demo-footer a{padding: 0 5px; color: #01AAED;}
  </style>
  </head>
  <body>
  <section id="container" class="">
      [#include "/base/header.ftl"/]
      <!--header end-->
      [#include "/base/left.ftl"/]
      <section id="main-content">
          <section class="wrapper">
                   [#include "/base/crumbs.ftl"/]
            <form method="post">   
              <div class="form-group" id="chartjs">
                 <input type="text" class="demo-input" placeholder="请选择日期" id="test1">
                 <button class="btn btn-danger" type="submit">查询</button>
              </div>
            </form> 
                  <div id="morris">
                  <div class="row">
                      <div class="col-lg-10">	
                          <section class="panel">
                              <header class="panel-heading">
                          		Multiple Select
                          		<span class="tools pull-right">
                            		<a href="javascript:;" class="icon-chevron-down"></a>
                            		<a href="javascript:;" class="icon-remove"></a>
                          		</span>
                      		  </header>
                              <div class="panel-body">
                                  <div id="hero-graph" class="graph"></div>
                              </div>
                          </section>
                      </div>
                  </div>
               	 	</div>
          </section>
      </section>
      <!--main content end-->
      <!--footer start-->
      [#include "/base/footer.ftl"/]
      <!--footer end-->
  </section>
 	 <!-- js placed at the end of the document so the pages load faster -->
    <script src="${base}/js/jquery.js"></script>
    <script src="${base}/js/jquery-1.8.3.min.js"></script>
    <script src="${base}/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${base}/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${base}/js/jquery.scrollTo.min.js"></script>
    <script src="${base}/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="${base}/assets/morris.js-0.4.3/morris.min.js" type="text/javascript"></script>
    <script src="${base}/assets/morris.js-0.4.3/raphael-min.js" type="text/javascript"></script>
    <script src="${base}/js/respond.min.js" ></script>
    
    
    <!--common script for all pages-->
    <script src="${base}/js/common-scripts.js"></script>

    <!-- script for this page only-->
    <script src="${base}/js/morris-statement.js"></script>
    
    <script src="${base}/laydate/laydate.js"></script> <!-- 改成你的路径 -->
    
   <script>
		lay('#version').html('-v'+ laydate.v);

		//执行一个laydate实例
		laydate.render({
  		elem: '#test1' //指定元素
  		,range: '~'
  		,change: function(date, endDate){
  			    console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}
  			    console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。
  			  /* window.location.href="${base}/system/shopStatistics/day?beginTime="+date+"&endTime="+endDate; */
  		}
		});
	</script>
  </body>
</html>