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
        <table  id="showNote"  >
            <tbody>
            <tr>
                <td bgcolor="#a23e48" style="font-size: 20px; color: #fff "  height="40px" colspan="4" >
                    基本信息</td>
            </tr>
            <tr>
                <td  width="16%">姓　　名</td><td ><font >${user.xm}</font></td>
                <td  width="16%">性　　别</td><td >${user.xb}</td>
            </tr>
            <tr>
                <td >出生日期</td><td >${user.csrq}</td>
                <td >籍贯</td><td >${user.jg}</td>
            </tr>
            <tr>
                <td >证件号码</td><td colspan="3">
                <font >${user.sfz}</font></td>
            </tr>
            <tr>
                <td >手机号</td><td  colspan="3">${user.sjh}</td>
            </tr>
            <tr>
                <td >党支部</td>
                <td >${requestScope.user.zbm}</td>
                <c:if test="${requestScope.user.zm!=null}">
                    <td >党小组</td>
                    <td >${requestScope.user.zm}</td>
                </c:if>
                <c:if test="${requestScope.user.zm==null}">
                    <td colspan="2"></td>
                </c:if>
            </tr>
            <tr>
                <td  >申请日期</td><td >${user.sqrq}</td>
                <td  >积极日期</td><td >${user.jjrq}</td>
            </tr>
            <tr>
                <td >预备日期</td><td  >${user.ybrq}</td>
                <td >正式日期</td><td >${user.zsrq}</td>
            </tr>
            <c:choose>
                <c:when test="${showModi==1}">
                    <tr>
                        <td colspan="4" align="center">
                            <button style="font-size: 16px;" onclick="window.location.href='userServlet?param=goModify'">点击修改</button>
                        </td>
                    </tr>
                </c:when>
                <c:when test="${showModi==0}">
                    <tr>
                        <td colspan="4" align="center">
                            <button style="font-size: 16px;" onclick="javascript :history.back(-1);">返回</button>
                        </td>
                    </tr>
                </c:when>
                <c:otherwise></c:otherwise>
            </c:choose>

            </tbody>
        </table>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
