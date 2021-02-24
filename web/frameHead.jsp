<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/19
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
<%--    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet"/>--%>

    <title>计算机学院18级党支部管理系统</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="css/fontawesome.css"/>
    <link rel="stylesheet" href="css/templatemo-style.css"/>
    <link rel="stylesheet" href="css/owl.css"/>
    <link rel="stylesheet" href="css/lightbox.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/note.css">
    <link rel="stylesheet" href="css/GroupShow.css">
    <link rel="stylesheet" href="css/PartyShow.css">
    <link rel="stylesheet" href="css/indexMain.css" />
</head>

<body>
<div id="page-wraper">
    <div id="head">
        <h1>上海大学18级党支部管理系统</h1>
        <button>退出</button>
    </div>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="active"><a href="index.jsp"><span>首页</span></a>
                    </li>
                    <li><a href="Activity.jsp"><span>活动展示</span></a></li>
                    <li><a href="javascript:jumptoNoteServlet()"><span>查看公告</span></a></li>
                    <li class="submenu"><a href="#"><span>党小组</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="GroupShow.jsp">(公共的)小组信息</a></li>
                            <li><a href="GroupModify.jsp">（组长）成员管理</a></li>
                            <li><a href="DeleteNote.jsp">（组长）删除公告</a></li>
                            <li><a href="PushNote.jsp">（公共看组长发布）公告</a></li>
                            <li><a href="PushActivity.jsp">（公共看组长发布）活动记录</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="#"><span>党支部</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="ImportList.jsp">（管理员）导入名单</a></li>
                            <li><a href="ImportGroupLeader.jsp">（管理员）党小组导入</a></li>
                            <li><a href="PartyModify.jsp">(管理员)成员管理</a></li>
                            <li><a href="PartyShow.jsp">(公共的)支部信息</a></li>
                            <li><a href="PushNote.jsp">(管理员)发布公告</a></li>
                            <li><a href="DeleteNote.jsp">(管理员)删除公告</a></li>
                        </ul>
                    </li>
                    <li><a href="userServlet?param=info&type=member&id=1"><span>个人信息</span></a></li>
                    <li class="submenu"><a href="#"><span>Contact Me</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="#">Student List</a></li>
                            <li><a href="#">Student View</a></li>
                            <li><a href="#">Student Add</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div><!-- /Sidebar -->
</div>
