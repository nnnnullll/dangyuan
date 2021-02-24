<%--
  Created by IntelliJ IDEA.
  User: zhangyun
  Date: 2021/2/19
  Time: 10:23 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党支部调整组长｜密码重置</h3>
    <select style="width: 200px;margin-top: 10px;margin-left: 30px" class="myinput"  id="myselect" onclick="getValue1(this.value)" >
        <option value=0>请选择功能</option>
        <option value=1>党支部调整组长</option>
        <option value=2>密码重置</option>
    </select>
    <div id="tzzz" style="width: 90%;margin: 30px;display: none">
        <form action="userServlet?type=head&param=changehead" method="post" >
        <%--    enctype="multipart/form-data"--%>
        <table width="1500px">
            <tr>
                <td class="mytext">所属党支部号：</td>
                <td><input type="text" class="myinput"  id="zbid" name="zbid"  /></td>
            </tr>
            <tr>
                <td class="mytext">调整党小组号：</td>
                <td><input class="myinput" type="text" id="zid" name="zid" value="${requestScope.head.zid}" /></td>
            </tr>
            <tr>
                <td class="mytext">党小组组长号：</td>
                <td><input class="myinput" type="text"  id="zzid" name="zzid" value="${requestScope.head.zzid}" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="修改" onclick="alert('党小组修改组长成功！')" />
                </td>
            </tr>
        </table>
    </form>
    </div>

    <div id="mmcz" style="width: 90%;margin-top:20px;margin-left:30px;margin-right:30px;margin-bottom:30px;display: none">
        <form action="userServlet?type=member&param=resetMm" method="post" >
            <%--    enctype="multipart/form-data"--%>
            <table width="1500px">
                <tr>
                    <td class="mytext">所属党支部号：</td>
                    <td><input type="text" class="myinput" name="zbid"  /></td>
                </tr>
                <tr>
                    <td class="mytext">党支部内身份：</td>
                    <td>
                        <select class="myinput" id="myselect1" onclick="myclick1(this.value)">
                            <option value=-1>请选择支部内身份</option>
                            <option value=0>支部书记</option>
                            <option value=1>党小组组长</option>
                            <option value=2>党小组成员</option>
                        </select>
                        <input type="hidden" id="hidden1" name="sf"  />
                    </td>
                </tr>
                <tr>
                    <td class="mytext">重置成员账号：</td>
                    <td><input class="myinput" type="text" name="cyid" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="修改" onclick="alert('密码重置成功！')" />
                    </td>
                </tr>
            </table>
        </form>
    </div>


</div>


<%@include file="frameFoot.jsp"%>