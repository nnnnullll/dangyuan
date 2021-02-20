<%--
  Created by IntelliJ IDEA.
  User: zhangyun
  Date: 2021/2/20
  Time: 12:00 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党小组信息展示及修改</h3>
    <div class="mainContent">
        <form action="GroupServlet?param=update" method="post" >
            <%--    enctype="multipart/form-data"--%>
            <table width="400">
                <tr>
                    <td>所属党支部名：</td>
                    <td><input type="text" readonly="readonly" id="zbm" name="zbm" value="${requestScope.groupp.zbm}" /></td>
                </tr>
                <tr>
                    <td>所属党支部号：</td>
                    <td><input type="text" readonly="readonly" id="zbid" name="zbid" value="${requestScope.groupp.zbid}" /></td>
                </tr>
                <tr>
                    <td>党支部书记名：</td>
                    <td><input type="text" readonly="readonly" id="zbsjm" name="zbsjm" value="${requestScope.groupp.zbsjm}" /></td>
                </tr>
                <tr>
                    <td>党支部书记号：</td>
                    <td><input type="text" readonly="readonly" id="zbsjid" name="zbsjid" value="${requestScope.groupp.zbsjid}" /></td>
                </tr>
                <tr>
                    <td>党小组组名：</td>
                    <td><input type="text" id="zm" name="zm" value="${requestScope.groupp.zm}" /></td>
                </tr>
                <tr>
                    <td>党小组组号：</td>
                    <td><input type="text" readonly="readonly" id="zid" name="zid" value="${requestScope.groupp.zid}" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="提交" />
                    </td>
                </tr>
            </table>
        </form>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
