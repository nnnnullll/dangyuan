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
    <h3>党小组成员转出</h3>
    <div style="width: 90%;margin: 30px;">
    <form action="userServlet?type=member&way=addmember" method="post" >
        <%--    enctype="multipart/form-data"--%>
        <table width="1500px">
            <tr>
                <td class="mytext">所属党支部号：</td>
                <td><input readonly="readonly" type="text" class="myinput"  id="zbid" name="zbid"/></td>
            </tr>
            <tr>
                <td class="mytext">转入党小组号：</td>
                <td><input class="myinput" type="text" id="zid" name="zid" /></td>
            </tr>
            <tr>
                <td class="mytext">党小组成员号：</td>
                <td><input class="myinput" type="text"  id="cyid" name="cyid" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="修改" onclick="alert('党小组修改组长成功！')" />
                </td>
            </tr>
        </table>
    </form>
    </div>

</div>


<%@include file="frameFoot.jsp"%>