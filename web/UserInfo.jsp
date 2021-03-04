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
        <table id="showNotee" width="800" border="1" align="center" class="table">
            <tr> <th>姓名</th> <td>${user.xm}</td> <th>性别</th> <td>${user.xb}</td></tr>

            <tr> <th>出生日期</th> <td>${user.csrq}</td><th>籍贯</th> <td>${user.jg}</td> </tr>

            <tr> <th>身份证号码</th> <td>${user.sfz}</td> <th>手机号</th> <td>${user.sjh}</td></tr>

            <tr> <th>组id</th> <td>${user.zid}</td>  <th>支部id</th> <td>${user.zbid}</td> </tr>

<%--            <tr> <td>党员id</td> <td>${user.dyid}</td> </tr>--%>
            <tr> <th>申请日期</th> <td>${user.sqrq}</td> <th>积极日期</th> <td>${user.jjrq}</td></tr>

<%--            <tr> <td>发展日期</td> <td>${user.fzrq}</td> </tr>--%>
            <tr> <th>预备日期</th> <td>${user.ybrq}</td> <th>正式日期</th> <td>${user.zsrq}</td></tr>

            <tr> <th>入党状态</th> <td>${user.zt}</td> </tr>
<%--            <tr> <td>头像</td> <td>${user.tx}</td> </tr>--%>
<%--            <tr> <td>申请书</td> <td>${user.sqs1}</td> <td>${user.sqs2}</td> </tr>--%>
<%--            <tr> <td>志愿书</td> <td>${user.zys1}</td> <td>${user.zys2}</td></tr>--%>
        </table>
        <table  id="showNote"  border="1" cellpadding="4" cellspacing="1" >
            <tbody>
            <tr>
                <td bgcolor="#a23e48" style="font-size: 12px;color: #dddddd "  colspan="4" >
                    基本信息</td>
                <%--                        <td bgcolor="#f6f6f6" colspan="3" style="font-size: 12px">--%>
                <%--                            　</td>--%>
                <td align="middle" bgcolor="#a23e48" style="font-size: 12px ;color: #dddddd" >
                    <span class="Apple-converted-space">&nbsp;</span>头像</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" >
                    姓　　名：</td>
                <td bgcolor="#ffffff" class="jl" >
                    <font color="#0988cb">${user.xm}</font></td>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    性　　别：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.xb}</td>
                <td bgcolor="#ffffff" rowspan="8" style="font-size: 12px" valign="top">
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    出生日期</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.csrq}</td>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    籍贯</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.jg}</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    证件号码：</td>
                <td bgcolor="#ffffff" class="jl" colspan="3">
                    <font color="#0988cb">${user.sfz}</font></td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    手机号：</td>
                <td bgcolor="#ffffff" class="jl" colspan="3">
                    ${user.sjh}</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    党小组：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.zid}</td>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    党支部：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.zbid}</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    申请日期：</td>
                <td bgcolor="#ffffff" class="jl"  >
                    ${user.sqrq}</td>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    积极日期：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.jjrq}</td>
            </tr>
            <tr>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    预备日期：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.ybrq}</td>
                <td bgcolor="#ffffff" style="font-size: 12px" >
                    正式日期：</td>
                <td bgcolor="#ffffff" class="jl" >
                    ${user.zsrq}</td>
            </tr>
            </tbody>
        </table>

    </div>

</div>


<%@include file="frameFoot.jsp"%>
