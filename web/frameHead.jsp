<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/19
  Time: 17:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="zh"  >
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
    <link rel="stylesheet" href="css/showMember.css"/>
    <style>
        .file{
            position: relative;
            display: inline-block;
            background: #a23e48;
            width: 186px;
            height: 49px;
            border-radius: 10px;
            text-align: center;
            overflow: hidden;
            color: white;
            text-decoration: none;
            line-height: 49px;
            left: 100px;
            top: 30px;
            font-size: 20px;
            font-weight: lighter;

            border-left: 2px solid #545B62;
            border-top: 2px solid #545B62;
            border-bottom: 2px solid #000000;
            border-right: 2px solid #000000;
        }
        .file input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }

    </style>
</head>

<body>
<div hidden>
    <div id="id">${sessionScope.id}</div>
    <div id="type">${sessionScope.type}</div>
</div>
<div id="page-wraper">
    <div id="head">
        <h1>上海大学18级党支部管理系统</h1>
        <a style="color: #fff" href="loginService?param=logout">退出</a>
    </div>
    <!-- Sidebar -->
    <div class="sidebar" id="sidebar">
        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="active"><a href="index.jsp"><span>首页</span></a></li>
                    <li><a href="NoteServlet?param=all"><span>查看公告</span></a></li>
                    <li class="submenu"><a href="#"><span>党小组</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Group">查看小组</a></li>
                            <li><a href="GroupShow.jsp">(公共的)小组信息</a></li>
                            <c:choose>
                                <c:when test = "${sessionScope.status==1}">
                                    <li><a href="GroupModify.jsp">（组长）成员管理</a></li>
                                    <li><a href="NoteServlet?param=alll">（组长）删除公告</a></li>
                                    <li><a href="PushNote.jsp">（公共看组长发布）公告</a></li>
                                    <li><a href="PushActivity.jsp">（公共看组长发布）活动记录</a></li>
                                </c:when>
                                <c:otherwise></c:otherwise>
                            </c:choose>

                        </ul>
                    </li>
                    <li class="submenu"><a href="MemberServlet?method=Branch"><span>党支部</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Branch">查看支部</a></li>
                            <li><a href="ImportMember.jsp">（管理员）导入名单</a></li>
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
