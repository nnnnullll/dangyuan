<%--
  Created by IntelliJ IDEA.
  User: zhangyun
  Date: 2021/2/20
  Time: 12:00 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党支部信息</h3>
    <div style="width: 90%;margin: 30px;">
        <form action="PartyServlet?param=update" method="post" >
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
                <c:choose>
                    <c:when test = "${sessionScope.type=='admin'}">
                        <tr>
                            <td colspan="2">
                                <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="提交" onclick="alert('党支部书记修改成功！')" />
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise></c:otherwise>
                </c:choose>

            </table>
        </form>
    </div>

</div>


<%@include file="frameFoot.jsp"%>

