<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/24
  Time: 11:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp" %>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党小组成员</h3>
    <div class="mainContent">
        <div class="GroupName">
            党小组: ${Groupp.zm} - 支部书记: ${Groupp.zbsjm}
        </div>
        <table class="showMember">
            <tr class="GroupMember">
                <td>组长</td>
                <td>${Head.xm}</td>
                <td>${Head.xb}</td>
                <td>${Head.sjh}</td>
                <td>${Head.csrq}</td>
                <td>${Head.sfz}</td>
            </tr>
            <tr class="GroupMember">
                <td>${Head.jg}</td>
                <td>${Head.sqrq}</td>
                <td>${Head.jjrq}</td>
                <td>${Head.fzrq}</td>
                <td>${Head.ybrq}</td>
                <c:if test="${Head.zsrq==null}">
                    <td>预备党员</td>
                </c:if>
                <c:if test="${Head.zsrq!=null}">
                    <td>${Head.zsrq}</td>
                </c:if>
            </tr>
            <c:forEach items="${memberList}" var="item">
                <tr class="GroupMember">
                    <td>组员</td>
                    <td>${item.xm}</td>
                    <td>${item.xb}</td>
                    <td>${item.sjh}</td>
                    <td>${item.csrq}</td>
                    <td>${item.sfz}</td>
                </tr>
                <tr class="GroupMember">
                    <td>${item.jg}</td>
                    <td>${item.sqrq}</td>
                    <td>${item.jjrq}</td>
                    <td>${item.fzrq}</td>
                    <td>${item.ybrq}</td>
                    <c:if test="${item.zsrq==null}">
                        <td>预备党员</td>
                    </c:if>
                    <c:if test="${item.zsrq!=null}">
                        <td>${item.zsrq}</td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>


<%@include file="frameFoot.jsp" %>
