<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/24
  Time: 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp" %>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党小组</h3>
    <div class="ShowGroupContent">
        <c:forEach items="${groupAllList}" var="item">
            <div class="GroupTitle">
                党小组: ${item.groupInfo.zm} - 组长: ${item.groupInfo.headxm}
                    <table class="showMemberBox">
                        <tr class="GroupMember" id="${item.groupInfo.zid}">
                            <td>组长</td>
                            <td>${item.head.xm}</td>
                            <td>${item.head.xb}</td>
                            <td>${item.head.sjh}</td>
                            <td>${item.head.csrq}</td>
                            <td>${item.head.sfz}</td>
                            <td>${item.head.jg}</td>
                            <td>${item.head.sqrq}</td>
                            <td>${item.head.jjrq}</td>
                            <td>${item.head.fzrq}</td>
                            <td>${item.head.ybrq}</td>
                            <c:if test="${item.head.zsrq==null}">
                                <td>预备党员</td>
                            </c:if>
                            <c:if test="${item.head.zsrq!=null}">
                                <td>${item.head.zsrq}</td>
                            </c:if>
                        </tr>
                        <c:forEach items="${item.memberList}" var="subitem">
                            <tr class="GroupMember">
                                <td>组员</td>
                                <td>${subitem.xm}</td>
                                <td>${subitem.xb}</td>
                                <td>${subitem.sjh}</td>
                                <td>${subitem.csrq}</td>
                                <td>${subitem.sfz}</td>
                                <td>${subitem.jg}</td>
                                <td>${subitem.sqrq}</td>
                                <td>${subitem.jjrq}</td>
                                <td>${subitem.fzrq}</td>
                                <td>${subitem.ybrq}</td>
                                <c:if test="${subitem.zsrq==null}">
                                    <td>预备党员</td>
                                </c:if>
                                <c:if test="${subitem.zsrq!=null}">
                                    <td>${subitem.zsrq}</td>
                                </c:if>
                            </tr>
                        </c:forEach>
                    </table>
            </div>
        </c:forEach>
    </div>

</div>


<%@include file="frameFoot.jsp" %>
