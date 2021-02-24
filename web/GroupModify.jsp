<%--
  Created by IntelliJ IDEA.
  User: zhangyun
  Date: 2021/2/19
  Time: 10:22 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>党小组成员转出｜组员状态变更</h3>
        <select style="width: 200px;margin-top: 10px;margin-left: 30px" class="myinput"  id="myselect" onclick="getValue(this.value)" >
            <option value=0>请选择功能</option>
            <option value=1>组员状态变更</option>
            <option value=2>党小组成员转出</option>
        </select>
    <div style="width: 90%;margin-top:20px;margin-left:30px;margin-right:30px;margin-bottom:30px;display: none" id="show1">
        <form action="userServlet?type=member&param=changeZt" method="post" >
            <table width="1500px">
                <tr>
                    <td class="mytext">所属党支部号：</td>
                    <td><input readonly="readonly" id="partyid" type="text" class="myinput" name="zbid"/></td>
                </tr>
                <tr>
                    <td class="mytext">党小组成员号：</td>
                    <td><input class="myinput" type="text"  name="cyid" /></td>
                </tr>
                <tr>
                    <td class="mytext">成员政治面貌：</td>
                    <td>
                        <select class="myinput" id="myselect2" onclick="myclick(this.value)">
                            <option value=-1>请选择政治面貌</option>
                            <option value=0>中共预备党员</option>
                            <option value=1>中共党员</option>
                        </select>
                        <input type="hidden" id="hidden" name="zt"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input  class="mysub" style="width: 180px;margin-left: 408px;" type="submit" value="修改" onclick="alert('党小组成员政治面貌修改成功！')" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div id="show2" style="width: 90%;margin-top:20px;margin-left:30px;margin-right:30px;margin-bottom:30px;display: none">
        <form action="userServlet?type=member&param=addmember" method="post" >
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