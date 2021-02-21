<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
    <script>
        function modify(){
            window.location.href("userServlet?param=goModify&type=member&id=1");
        }
    </script>
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
                    <li><a href="Note.jsp"><span>查看公告</span></a></li>
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
                            <li><a href="MemberList.jsp">(公共的)支部信息</a></li>
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
    <h3>个人信息表</h3>
    <div class="mainContent">
        <hr />
        <table width="800" align="center">
            <tr>
                <td align="right"><a href="userServlet?param=goModify&type=${requestScope.type}&id=1">修改</a></td>
            </tr>
        </table>
        <table id="stuTb" width="800" border="1" align="center">
            <tr> <td>姓名</td> <td>${user.xm}</td> </tr>
            <tr> <td>性别</td> <td>${user.xb}</td> </tr>
            <tr> <td>出生日期</td> <td>${user.csrq}</td> </tr>
            <tr> <td>籍贯</td> <td>${user.jg}</td> </tr>
            <tr> <td>身份证号码</td> <td>${user.sfz}</td> </tr>
            <tr> <td>手机号</td> <td>${user.sjh}</td> </tr>
            <tr> <td>组id</td> <td>${user.zid}</td> </tr>
            <tr> <td>支部id</td> <td>${user.zbid}</td> </tr>
            <tr> <td>党员id</td> <td>${user.dyid}</td> </tr>
            <tr> <td>申请日期</td> <td>${user.sqrq}</td> </tr>
            <tr> <td>积极日期</td> <td>${user.jjrq}</td> </tr>
            <tr> <td>发展日期</td> <td>${user.fzrq}</td> </tr>
            <tr> <td>预备日期</td> <td>${user.ybrq}</td> </tr>
            <tr> <td>正式日期</td> <td>${user.zsrq}</td> </tr>
            <tr> <td>入党状态</td> <td>${user.zt}</td> </tr>
            <tr> <td>头像</td> <td>${user.tx}</td> </tr>
            <tr> <td>申请书</td> <td>${user.sqs1}</td> <td>${user.sqs2}</td> </tr>
            <tr> <td>志愿书</td> <td>${user.zys1}</td> <td>${user.zys2}</td></tr>
        </table>
    </div>

</div>


</div>

<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/node.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl-carousel.js"></script>
<script src="js/lightbox.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>
