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
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet"/>

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
        function assure(){
            alert("确认修改？");
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

<div class="mainBorder">
    <h3>修改个人信息</h3>
<%--    <div class="mainContent">--%>
<%--        这里是修改的内容--%>
<%--    </div>--%>
    <div class="mainContent">
        <form action="userServlet?param=ModifyPwd&type=member&id=1" method="post" >
            <table width="800" border="1" align="center">
                <tr>
                    <td>密码：</td>
                    <td><input type="text" id="mm" name="mm" placeholder="新密码"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="修改" onsubmit="assure()"/>
                    </td>
                </tr>
            </table>
        </form>

        <form action="userServlet?param=doModify&type=member&id=1" method="post" >
            <%--    enctype="multipart/form-data"--%>
            <table width="800" border="1" align="center">
                <tr>
                    <td>姓名：</td>
                    <td><input type="text" id="xm" name="xm" value="${requestScope.user.xm}" /></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td><input type="text" id="xb" name="xb" value="${requestScope.user.xb}" /></td>
                </tr>
                <tr>
                    <td>出生日期：</td>
                    <td><input type="text" id="csrq" name="csrq" value="${requestScope.user.csrq}" /></td>
                </tr>
                <tr>
                    <td>籍贯：</td>
                    <td><input type="text" id="jg" name="jg" value="${requestScope.user.jg}" /></td>
                </tr>
                <tr>
                    <td>身份证号：</td>
                    <td><input type="text" id="sfz" name="sfz" value="${requestScope.user.sfz}"  /></td>
                </tr>
                <tr>
                    <td>手机号码：</td>
                    <td><input type="text" id="sjh" name="sjh" value="${requestScope.user.sjh}"/></td>
                </tr>
                <tr> <td>组id</td> <td><input type="text" id="zid" name="zid" readonly value="${requestScope.user.zid}"/></td> </tr>
                <tr> <td>支部id</td> <td><input type="text" id="zbid" name="zbid" readonly value="${requestScope.user.zbid}"/></td> </tr>
                <tr> <td>党员id</td> <td><input type="text" id="dyid" name="dyid" readonly value="${requestScope.user.dyid}"/></td> </tr>
                <tr> <td>申请日期</td> <td><input type="text" id="sqrq" name="sqrq" value="${requestScope.user.sqrq}"/></td> </tr>
                <tr> <td>积极日期</td> <td><input type="text" id="jjrq" name="jjrq" value="${requestScope.user.jjrq}"/></td> </tr>
                <tr> <td>发展日期</td> <td><input type="text" id="fzrq" name="fzrq" value="${requestScope.user.fzrq}"/></td> </tr>
                <tr> <td>预备日期</td> <td><input type="text" id="ybrq" name="ybrq" value="${requestScope.user.ybrq}"/></td> </tr>
                <tr> <td>正式日期</td> <td><input type="text" id="zsrq" name="zsrq" value="${requestScope.user.zsrq}"/></td> </tr>
                <tr> <td>入党状态</td> <td><input type="text" id="zt" name="zt" value="${requestScope.user.zt}"/></td> </tr>
                <tr> <td>头像</td> <td><input type="text" id="tx" name="tx" value="${requestScope.user.tx}"/></td> </tr>
                <tr> <td>申请书</td>
                    <td><input type="text" id="sqs1" name="sqs1" value="${requestScope.user.sqs1}"/></td>
                    <td><input type="text" id="sqs2" name="sqs2" value="${requestScope.user.sqs2}"/></td>
                </tr>
                <tr> <td>志愿书</td>
                    <td><input type="text" id="zys1" name="zys1" value="${requestScope.user.zys1}"/></td>
                    <td><input type="text" id="zys2" name="zys2" value="${requestScope.user.zys2}"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="提交" />
                        <input type="reset" value="重置" />
                    </td>
                </tr>
            </table>
        </form>
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
