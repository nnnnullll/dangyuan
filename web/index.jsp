<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
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

    <title>计算机学院18级党支部管理系统</title>

    <link rel="stylesheet" href="css/fontawesome.css"/>
    <link rel="stylesheet" href="css/templatemo-style.css"/>
    <link rel="stylesheet" href="css/owl.css"/>
    <link rel="stylesheet" href="css/lightbox.css"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap-4.0.0.css" />
    <style>
        .image{
            width: 240px;
            max-height: 300px;
            margin: 20px auto 0;
            background-color: transparent;
            overflow: hidden;
        }
        .image img{
            width: 100%;
            height: auto;
        }
        .member-content{
            height: 30px;
            width: 240px;
            margin: 0 auto;
        }
        .member-content p{
            margin-top: 15px;
            text-align: center;
            width: 240px;
            color: #000;
            font-size: 1.5em;
            font-weight: 500;
        }
        .ShowActivity-Border{
            background-color: #EAEAEA;
            height: 1380px;
            left: 321px;
            margin-top: 0;
            position: absolute;
            top: 70px;
            transition: all .2s ease-in-out 0s;
            right: 0;
            z-index: 2;
            overflow: hidden;
        }
        .ShowActivity-Slipper{
            width: 1080px;
            height: 600px;
            margin: 0 auto;
            overflow: hidden;
        }
        .carousel-inner1 {
            position: relative;
            width: 100%;
            overflow: hidden;
            height: 600px;
        }
        .carousel-caption1 {
            position: absolute;
            right: 15%;
            top: 468px;
            left: 15%;
            z-index: 10;
            padding-top: 20px;
            padding-bottom: 20px;
            color: #fff;
            text-align: center;
        }

        .ShowActivity-container {
            width: 1080px;
            margin: 0 auto;
            position: relative;
            height: 680px;
        }

        .isotope-box {
            position: relative;
            width: 100%;
        }

        .isotope-toolbar {
            text-align: center;
            margin: 10px;
        }

        .isotope-toolbar p {
            border-top: 1px solid #fff;
            padding-top: 15px;
        }

        .isotope-toolbar a {
            color: #fff;
        }

        .isotope-item {
            position: relative;
            width: 48%;
            margin: 1%;
            /* border-bottom: 2px solid rgba(250,250,250,0.1); */
            border-bottom: 2px solid #a43f49;
            padding-bottom: 30px;
            box-sizing: border-box;
        }

        .isotope-item img {
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border-radius: 5px;
        }

        .lazyload {
            background: #f7f7f7;
        }

        .lazyloading {
            background: #f7f7f7 url(//afarkas.github.io/lazysizes/assets/imgs/loader.gif) no-repeat center;
            min-height: 60px;
        }

        figure.snip1321 {
            overflow: hidden;
            text-align: center;
            -webkit-perspective: 50em;
            perspective: 50em;
        }
        figure.snip1321 * {
            -webkit-box-sizing: padding-box;
            box-sizing: padding-box;
            -webkit-transition: all 0.2s ease-out;
            transition: all 0.2s ease-out;
        }
        figure.snip1321 figcaption {
            top: 50%;
            left: 20px;
            right: 20px;
            position: absolute;
            opacity: 0;
            z-index: 1;
        }
        figure.snip1321 h4 {
            margin-top: 15px;
            margin-bottom: 5px;
            color: #232323;
        }
        figure.snip1321 span {
            font-size: 14px;
            font-style: italic;
            display: block;
            color: #7a7a7a;
        }
        figure.snip1321 i {
            position: relative!important;
            font-size: 18px;
            background-color: #a43f49;
            width: 40px;
            height: 40px;
            display: inline-block;
            text-align: center;
            line-height: 40px;
            border-radius: 5px;
            color: #fff;
        }
        figure.snip1321:after {
            background-color: #ffffff;
            position: absolute;
            content: "";
            display: block;
            top: 20px;
            left: 20px;
            right: 20px;
            bottom: 20px;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
            -webkit-transform: rotateX(-90deg);
            transform: rotateX(-90deg);
            -webkit-transform-origin: 50% 50%;
            -ms-transform-origin: 50% 50%;
            transform-origin: 50% 50%;
            opacity: 0;
        }
        figure.snip1321 a {
            left: 0;
            right: 0;
            top: 0;
            bottom: 0;
            z-index: 1;
        }
        figure.snip1321:hover figcaption,
        figure.snip1321.hover figcaption {
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            opacity: 1;
            -webkit-transition-delay: 0.2s;
            transition-delay: 0.2s;
        }
        figure.snip1321:hover:after,
        figure.snip1321.hover:after {
            -webkit-transform: rotateX(0);
            transform: rotateX(0);
            opacity: 0.9;
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
        <div class="responsive-nav">
            <div id="menu" class="menu">
                <div class="container">
                    <div class="image">
                        <a href="#"><img src="images/test-image.jpg" alt="" /></a>
                    </div>
                    <div class="member-content">
                        <p>${sessionScope.xm}</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="sidebar-inner slimscroll">
            <div id="sidebar-menu" class="sidebar-menu">
                <ul>
                    <li class="active"><a href="index.jsp"><span>首页</span></a></li>
                    <li><a href="NoteServlet?param=all"><span>查看公告</span></a></li>
                    <li class="submenu"><a href="#"><span>党小组</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Group">查看小组</a></li>
                            <li><a href="GroupShow.jsp">小组信息</a></li>
                            <c:choose>
                                <c:when test = "${sessionScope.type=='head'}">
                                    <li><a href="GroupModify.jsp">成员管理</a></li>
                                    <li><a href="NoteServlet?param=alll">删除公告</a></li>
                                    <li><a href="PushNote.jsp">发布公告</a></li>
                                    <li><a href="Activity.jsp">发布活动记录</a></li>
                                </c:when>
                                <c:otherwise></c:otherwise>
                            </c:choose>

                        </ul>
                    </li>
                    <li class="submenu"><a href="MemberServlet?method=Branch"><span>党支部</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Branch">查看支部</a></li>
                            <li><a href="PartyShow.jsp">支部信息</a></li>
                            <c:choose>
                                <c:when test = "${sessionScope.type=='admin'}">
                                    <li><a href="ImportMember.jsp">导入名单</a></li>
                                    <li><a href="ImportGroup.jsp">党小组导入</a></li>
                                    <li><a href="PartyModify.jsp">成员管理</a></li>
                                    <li><a href="PushNote.jsp">发布公告</a></li>
                                    <li><a href="DeleteNote.jsp">删除公告</a></li>
                                </c:when>
                                <c:otherwise></c:otherwise>
                            </c:choose>
                        </ul>
                    </li>
                    <li><a href="userServlet?param=info"><span>个人信息</span></a></li>

                </ul>
            </div>
        </div>

    </div><!-- /Sidebar -->
</div>
    <!-- 下面是修改的页面 -->
    <div class="ShowActivity-Border">
        <div class="ShowActivity-Slipper">
            <div class="container mt-3">
                <div class="row">
                    <div class="col-12" style="overflow: hidden;">
                        <div class="carousel slide" data-ride="carousel" id="carouselExampleControls">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleControls" data-slide-to="1"></li>
                                <li data-target="#carouselExampleControls" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner1">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/1.jpg" alt="First slide">
                                    <div class="carousel-caption1 d-none d-md-block">
                                        <h5>Item 1 Heading</h5>
                                        <p>Item 1 Description</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/2.jpg" alt="Second slide">
                                    <div class="carousel-caption1 d-none d-md-block">
                                        <h5>Item 2 Heading</h5>
                                        <p>Item 2 Description</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/3.jpg" alt="Third slide">
                                    <div class="carousel-caption1 d-none d-md-block">
                                        <h5>Item 3 Heading</h5>
                                        <p>Item 3 Description</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
            <div class="container mt-3">
                <div class="row">
                    <div class="col-12">
                        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselExampleControls" data-slide-to="1"></li>
                                <li data-target="#carouselExampleControls" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="images/1.jpg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Item 1 Heading</h5>
                                        <p>Item 1 Description</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/2.jpg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Item 2 Heading</h5>
                                        <p>Item 2 Description</p>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="images/3.jpg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <h5>Item 3 Heading</h5>
                                        <p>Item 3 Description</p>
                                    </div>
                                </div>
                            </div>
                            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>

        <div class="ShowActivity-container">
            <c:forEach items="${sessionScope.activityList}" var="item" varStatus="xh">
                <c:if test="${xh.index%2==0}">
                    <div class="isotope-item" style="position: absolute; left: 0px; top:${xh.index}*394 px;">
                        <figure class="snip1321">
                            <img src=${photoArr[xh.index]} alt="sq-sample26"/>
                            <figcaption>
                                <a href=${photoArr[xh.index]}  data-lightbox="image-1" data-title="Caption"><i
                                        class="fa fa-search"></i></a>
                                <h4>${item.hddd}</h4>
                                <span>${item.hdbt}</span>
                            </figcaption>
                        </figure>
                    </div>
                </c:if>
                <c:if test="${xh.index%2==1}">
                    <div class="isotope-item" data-type="people"
                         style="position: absolute; left: 536px; top: ${xh.index}*394px;">
                        <figure class="snip1321">
                            <img src=${photoArr[xh.index]} alt="sq-sample26"/>
                            <figcaption>
                                <a href=${photoArr[xh.index]} data-lightbox="image-1" data-title="Caption"><i
                                        class="fa fa-search"></i></a>
                                <h4>${item.hddd}</h4>
                                <span>${item.hdbt}</span>
                            </figcaption>
                        </figure>
                    </div>
                </c:if>
            </c:forEach>

        </div>
    </div>
<%@include file="frameFoot.jsp"%>
