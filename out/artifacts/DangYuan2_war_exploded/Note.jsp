<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/23
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>公 告</h3>
    <div class="mainContent">
        <table id="showNote">
            <thead>
            <td>标题</td>
            <td>内容</td>
            <td>发布时间</td>
            </thead>
            <tbody>
            <c:forEach items="${notelist}" var="item">
            <tr>
                <td>${item.bt}</td>
                <td>${item.nr}</td>
                <td>${item.sj}</td>
            </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
