<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<script>
    function modify(){
        window.location.href("UserModify.jsp?type=member&id=1");
    }
</script>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>个人信息表</h3>
    <div class="mainContent">
        <hr />
        <table width="800" align="center">
            <tr>
                <td align="right"><input type="button" value="修改" onclick="modify();" /></td>
            </tr>
        </table>
        <table id="stuTb" width="800" border="1" align="center">
            <tr> <td>姓名</td> <td>${user.xm}</td> </tr>
            <tr> <td>性别</td> <td>${user.xb}</td> </tr>
            <tr> <td>出生日期</td> <td>${user.csrq}</td> </tr>
            <tr> <td>籍贯</td> <td>${user.xb}</td> </tr>
            <tr> <td>身份证号码</td> <td>${user.xb}</td> </tr>
            <tr> <td>手机号</td> <td>${user.xb}</td> </tr>
            <tr> <td>组id</td> <td>${user.xb}</td> </tr>
            <tr> <td>支部id</td> <td>${user.xb}</td> </tr>
            <tr> <td>党员id</td> <td>${user.xb}</td> </tr>
            <tr> <td>申请日期</td> <td>${user.xb}</td> </tr>
            <tr> <td>积极日期</td> <td>${user.xb}</td> </tr>
            <tr> <td>发展日期</td> <td>${user.xb}</td> </tr>
            <tr> <td>预备日期</td> <td>${user.xb}</td> </tr>
            <tr> <td>正式日期</td> <td>${user.xb}</td> </tr>
            <tr> <td>入党状态</td> <td>${user.xb}</td> </tr>
            <tr> <td>头像</td> <td>${user.xb}</td> </tr>
            <tr> <td>申请书</td> <td>${user.sqs1}</td> <td>${user.sqs2}</td> </tr>
            <tr> <td>志愿书</td> <td>${user.zys1}</td> <td>${user.zys2}</td></tr>
        </table>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
