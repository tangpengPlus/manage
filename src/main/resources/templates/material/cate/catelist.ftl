<!DOCTYPE html>
<html lang="en">
  <head>
 [#include "/base/base.ftl"/]
  </head>
  <body>
  <section id="container" class="">
      <!--header start-->
      [#include "/base/header.ftl"/]
      <!--header end-->
      <!--sidebar start-->
      [#include "/base/left.ftl"/]
      <!--sidebar end-->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <section class="panel">
                   [#include "/base/crumbs.ftl"/]
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                          [@shiro.hasPermission name="/system/authority/add"]
                              <div class="btn-group">
                                  <a id="editable-sample_new" class="btn btn-primary" href="${base}/material/cate/add">
                                      Add New <i class="icon-plus"></i>
                                  </a>
                              </div>
                              
                              <div class="col-md-5">
                              <form class="form-horizontal tasi-form" method="post">
                           <div style="float:left">广告图名查询：</div>
                     <div style="float:left">
                       <input type="text" style="height:20px;width:80px;float:left">
                     </div>
                     <div style="float:left">
                                  <span>&nbsp;</span>    查询&nbsp;	:<span>&nbsp;</span> 
                                  <select id="my_multi_select1" value="" style="width:100px"  >
                                          [#if sharelist ??]
                                            [#list sharelist as ma]
                                            		[#assign choseState=0/]
                                            			[#list ma.id as id]
                                            				[#if id==ma.id]
                                            					[#assign choseState=1/]
                                            					[#break]
                                            				[/#if]
                                            			[/#list]	
                                            		[#if choseState==1]
	                                                   <option value="${ma.id}" selected>${ma.name}</option>
	                                                   [#else]
	                                                   <option value="${ma.id}">${ma.name}</option>
                                            		[/#if]
                                            [/#list]
                                          [/#if]
                                      </select>
                                      </div>	
                                        <div style="float:left">
                                          <span>&nbsp;</span> <button  type="submit" >&nbsp;提交</button>
                                        </div>
	                                      </form>
                                  </div>
                              
                              
                           [/@shiro.hasPermission]
                              <div class="btn-group pull-right">
                                  <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="icon-angle-down"></i>
                                  </button>
                                  <ul class="dropdown-menu pull-right">
                                      <li><a href="#">Print</a></li>
                                      <li><a href="#">Save as PDF</a></li>
                                      <li><a href="#">Export to Excel</a></li>
                                  </ul>
                              </div>
                          </div>
                          <div class="space15"></div>
                           <div class="panel-body">
                              <section id="no-more-tables">
                                <table class="table table-bordered table-striped table-condensed cf">
                                  <thead class="cf">
                                  <tr>
                                      <th></th>
                                      <th>广告编号</th>
                                      <th>广告名称</th>
                                      <th class="numeric">广告图链接</th>
                                      <th class="numeric">广告图位置</th>
                                      <th class="numeric">广告图片</th>
                                      <th class="numeric">操作</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  [#if sharelist?? ]
	                                  [#list sharelist as ph]
	                                   <tr>
	                                      <td>
                                              <label>
                                                  <input type="checkbox" value="${ph.id}">
                                              </label>
                                          </td>
	                                      <td class="numeric">${ph.id}</td>
	                                      <td class="numeric">${ph.name}</td>
	                                      <td class="numeric">${ph.url}</td>
	                                      <td class="numeric">${ph.place}</td>
	                                      <td class="numeric">${ph.picture}</td>
	                                      
	                                      <td class="numeric">
	                                       [@shiro.hasPermission name="/system/authority/update"]<a type="button" href="${base}/material/cate/update?id=${ph.id}" class="btn btn-danger btn-sm"><i class="icon-refresh"></i> Update</a>[/@shiro.hasPermission]
	                                      &nbsp;&nbsp;[@shiro.hasPermission name="/system/authority/delete"]<a type="button" href="${base}/material/cate/delete?id=${ph.id}" class="btn btn-warning btn-sm"><i class=" icon-trash"></i> Delete</a>[/@shiro.hasPermission]
	                                      </td>
	                                  </tr>
	                                  [/#list]
                                  [/#if]
                              </tbody>
                              </table>
                               [#include "/base/page.ftl"/]
                              </section>
                          </div>
                      </div>
                  </div>
              </section>
              <!-- page end-->
          </section>
      </section>
      <!--main content end-->
      <!--footer start-->
      [#include "/base/footer.ftl"/]
      <!--footer end-->
  </section>
 	<script src="${base}/js/jquery-1.8.3.min.js"></script>
    <script src="${base}/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="${base}/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="${base}/js/jquery.scrollTo.min.js"></script>
    <script src="${base}/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script type="text/javascript" src="${base}/assets/data-tables/jquery.dataTables.js"></script>
    <script type="text/javascript" src="${base}/assets/data-tables/DT_bootstrap.js"></script>
    <script src="${base}/js/respond.min.js" ></script>
    <!--common script for all pages-->
    <script src="${base}/js/common-scripts.js"></script>
      <script src="${base}/js/editable-table.js"></script>
  </body>
</html>
