<!DOCTYPE html>
<html lang="en">
  <head>
 [#include "/base/base.ftl"/]
  </head>
  <body>
  <section id="container" class="">
      [#include "/base/header.ftl"/]
      <!--header end-->
      [#include "/base/left.ftl"/]
      <section id="main-content">
          <section class="wrapper">
              <!-- page start-->
              <section class="panel">
                   [#include "/base/crumbs.ftl"/]
                  <div class="panel-body">
                      <div class="adv-table editable-table ">
                          <div class="clearfix">
                          [@shiro.hasPermission name="/system/admin/add"]
                              <div class="btn-group">
                                  <a id="editable-sample_new" class="btn btn-primary" href="${base}/system/shopset/addmanage">
                                      Add New <i class="icon-plus"></i>
                                  </a>
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
                                      <th>店主名称</th>
                                      <th>店铺名称</th>
                                      <th class="numeric">店铺地址</th>
                                      <th class="numeric">店铺等级</th>
                                      <th class="numeric">创建时间</th>
                                      <th class="numeric">状态</th>
                                      <th class="numeric">操作</th>
                                  </tr>
                                  </thead>
                                  <tbody>
                                  [#if manage?? ]
	                                  [#list manage as ma]
	                                   <tr>
	                                      <td>${ma.shopkeeper}</td>
	                                      <td class="numeric">${ma.shopName}</td>
	                                      <td class="numeric">${ma.address}</td>
	                                      <td class="numeric">${ma.grade}</td>
	                                      <td class="numeric">暂定</td>
	                                      <td class="numeric">${ma.status}</td>
	                                      <td class="numeric">
	                                      [@shiro.hasPermission name="/system/admin/update"]<a type="button" href="${base}/system/shopset/updatemanage?id=${ma.id}" class="btn btn-danger btn-sm"><i class="icon-refresh"></i> Update</a>[/@shiro.hasPermission]
	                                      &nbsp;&nbsp;[@shiro.hasPermission name="/system/admin/delete"]<a type="button" href="${base}/system/shopset/deletemanage?id=${ma.id}" class="btn btn-warning btn-sm"><i class=" icon-trash"></i> Delete</a>[/@shiro.hasPermission]
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