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
<%--    <link rel="stylesheet" href="css/note.css">--%>
    <link rel="stylesheet" href="css/GroupShow.css">
    <link rel="stylesheet" href="css/PartyShow.css">
    <link rel="stylesheet" href="css/indexMain.css" />
    <link rel="stylesheet" href="css/showMember.css"/>
    <style>
        #rightmainbox{
            width: 1020px;
            height: 688px;
            overflow: auto;
        }
        #notelist_title{
            width: 1020px;
            height: 40px;
            margin-top: 20px;
            background-color:#a23e48;
        }
        #notelist_title_text{
            width: 120px;
            height: 20px;
            color: white;
            font-size: 20px;
            padding: 10px;
            font-weight: 700;
        }
        #notelist_lan{
            width: 1020px;
            height: 40px;
            font-size: 20px;
            font-weight: 700;
            display: flex;
            flex-direction: row;
            border-bottom: #C6CACE solid 1px;
        }
        #notelist_lan1{
            width: 150px;
            height: 40px;
            text-align: center;
            line-height: 40px;
            border-left: #C6CACE solid 1px;
            border-right: #C6CACE solid 1px;
        }
        #notelist_lan3{
            width: 750px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-left: #C6CACE solid 1px;
            border-right:#C6CACE solid 1px;
        }
        #notelist_lan4{
            width: 120px;
            height: 40px;
            line-height: 40px;
            text-align: center;
            border-right:#C6CACE solid 1px;
        }
        #notelistbox{
            display: flex;
            flex-direction: row;
            width: 1020px;
            min-height: 40px;
            font-size: 18px;
            border-bottom: #C6CACE solid 1px;
        }
        #notelistrq{
            width: 150px;
            min-height: 40px;
            display: table-cell;
            text-align: center;
            line-height: 40px;
            border-left: #C6CACE solid 1px;
            border-right: #C6CACE solid 1px;
        }
        #notelistnr{
            width: 750px;
            min-height: 40px;
            text-align:left;
            vertical-align: middle;
            border-left: #C6CACE solid 1px;
            border-right:#C6CACE solid 1px;
            display: flex;
            flex-direction: column;
        }
        #notelistnr_bt{
            font-weight: 700;
            line-height: 40px;
        }
        #notelistnr_nr{
            line-height: 30px;
        }
        #notelistsc{
            width: 120px;
            min-height: 40px;
            line-height: 40px;
            text-align: center;
            vertical-align: middle;
            border-right:#C6CACE solid 1px;
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
                    <li><a href="NoteServlet?param=all"><span>查看公告</span></a></li>
                    <li class="submenu"><a href="#"><span>党小组</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Group">查看小组</a></li>
                            <li><a href="GroupShow.jsp">(公共的)小组信息</a></li>
                            <li><a href="GroupModify.jsp">（组长）成员管理</a></li>
                            <li><a href="DeleteNote.jsp">（组长）删除公告</a></li>
                            <li><a href="PushNote.jsp">（公共看组长发布）公告</a></li>
                            <li><a href="PushActivity.jsp">（公共看组长发布）活动记录</a></li>
                        </ul>
                    </li>
                    <li class="submenu"><a href="MemberServlet?method=Branch"><span>党支部</span><span class="menu-arrow"></span></a>
                        <ul>
                            <li><a href="MemberServlet?method=Branch">查看支部</a></li>
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


<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>删除公告</h3>
    <div class="mainContent">

      <div id="rightmainbox">
          <div id="notelist_title">
            <div id="notelist_title_text">公告列表</div>
          </div>
          <div id="notelist_lan">
            <div id="notelist_lan1">发布时间</div>
            <div id="notelist_lan3">公告内容</div>
            <div id="notelist_lan4">删除</div>
          </div>
            <c:forEach items="${notelist}" var="item">
            <div id="notelistbox">
              <div id="notelistrq">${item.sj}</div>
              <div id="notelistnr">
                <div id="notelistnr_bt">${item.bt}</div>
                <div id="notelistnr_nr">${item.nr}</div>
              </div>
              <div id="notelistsc">
                <!-- <button onclick="deletenote(requestScope.notelist[0].ggid)">删除</button> -->
                <button onclick="deletenote(${item.ggid})">删除</button>
              </div>
            </div>
            </c:forEach>
          </form>
          </tr>
        </form>
        
      </div>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
