<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>

<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>个人信息表</h3>
    <div class="mainContent">
        <hr />
        <table width="800" align="center" class="table">
            <tr>
                <td align="right"><a href="userServlet?param=goModify&type=${requestScope.type}&id=1">修改</a></td>
            </tr>
        </table>
        <table id="stuTb" width="800" border="1" align="center" class="table">
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


<%@include file="frameFoot.jsp"%>
