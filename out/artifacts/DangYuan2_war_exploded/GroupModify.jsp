<%--
  Created by IntelliJ IDEA.
  User: zhangyun
  Date: 2021/2/19
  Time: 10:22 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党小组添加删除成员</h3>
    <form action="GroupServlet?param=add" method="post" >
        <%--    enctype="multipart/form-data"--%>
        <table width="1500px">
            <tr>
                <td class="mytext">所属党支部名：</td>
                <td><input class="myinput" type="text" readonly="readonly" id="zbm" name="zbm" value="${requestScope.party.zbm}" /></td>
            </tr>
            <tr>
                <td class="mytext">所属党支部号：</td>
                <td><input type="text" class="myinput" readonly="readonly" id="zbid" name="zbid" value="${requestScope.party.zbid}" /></td>
            </tr>
            <tr>
                <td class="mytext">党支部书记名：</td>
                <td><input class="myinput" type="text" readonly="readonly" id="zbsjm" name="zbsjm" value="${requestScope.party.zbsjm}" /></td>
            </tr>
            <tr>
                <td class="mytext">党支部书记号：</td>
                <td><input class="myinput" type="text"  id="zbsjid" name="zbsjid" value="${requestScope.party.zbsjid}" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="提交" onclick="alert('党小组新增成员成功！')" />
                </td>
            </tr>
        </table>
    </form>

</div>


<%@include file="frameFoot.jsp"%>