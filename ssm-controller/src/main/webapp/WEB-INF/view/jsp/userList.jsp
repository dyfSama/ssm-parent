<%--
  Created by IntelliJ IDEA.
  User: duyafei
  Date: 2018/9/15
  Time: 18:35
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String appPath = request.getContextPath(); %>
<html>
<head>
    <title>Paper列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    基于SSM框架的管理系统：简单实现增、删、改、查。
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>论文列表 —— 显示所有论文</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 column">
            <a class="btn btn-primary" href="javascript:void(0)">新增</a>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>用户编号</th>
                    <th>用户姓名</th>
                    <th>用户年龄</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="bean" items="${page.list}" varStatus="status">
                    <tr>
                        <td>${bean.id}</td>
                        <td>${bean.name}</td>
                        <td>${bean.age}</td>
                        <td>
                            <a href="javascript:void(0)">更改</a> |
                            <a href="${appPath}/user/delete?id=${bean.id}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            当前页: ${page.pageNum}
            每页:${page.pageSize}
            上一页:${page.prePage}
            下一页:${page.nextPage}
            总数:${page.total}
        </div>
    </div>

</div>