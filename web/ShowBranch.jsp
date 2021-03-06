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
    <h3>党支部</h3>
    <div class="ShowGroupContent">
        <c:forEach items="${groupAllList}" var="item">
            <div class="GroupTitle">
                党小组: ${item.groupInfo.zm} - 组长: ${item.groupInfo.headxm}
                <table class="showMemberBox">
                    <tr class="GroupMember">
                        <td>角色</td>
                        <td>姓名</td>
                        <td>籍贯</td>
                        <td>申请人日期</td>
                        <td>积极分子日期</td>
                        <td>发展对象日期</td>
                        <td>预备党员日期</td>
                        <td>当前状态</td>
                    </tr>
                    <tr class="GroupMember" id="${item.groupInfo.zid}">
                        <td>组长</td>
                        <td>
                            <a href="userServlet?param=goinfo&type=head&id=${item.head.zzid}">
                                    ${item.head.xm}
                            </a>
                        </td>
<%--                        <td>${item.head.xm}</td>--%>
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
                            <td>
                                <a href="userServlet?param=goinfo&type=member&id=${subitem.cyid}">
                                        ${subitem.xm}
                                </a>
                            </td>
                            <td>${subitem.xm}</td>
                            <td>${subitem.jg}</td>
                            <td>${subitem.sqrq}</td>
                            <td>${subitem.jjrq}</td>
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
