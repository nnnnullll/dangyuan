<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<div class="mainBorder">
    <h3>修改个人信息</h3>
<%--    <div class="mainContent">--%>
<%--        这里是修改的内容--%>
<%--    </div>--%>
    <div class="mainContent">
        <form action="userServlet?param=ModifyPwd&type=member&id=1" method="post" >
            <table width="800" border="1" align="center" class="table">
                <tr>
                    <td>密码：</td>
                    <td><input type="text" id="mm" name="mm" placeholder="新密码"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="修改" onsubmit="assure()"/>
                    </td>
                </tr>
            </table>
        </form>

        <form action="userServlet?param=doModify&type=member&id=1" method="post" class="table">
            <%--    enctype="multipart/form-data"--%>
            <table width="800" border="1" align="center">
                <tr>
                    <td>姓名：</td>
                    <td><input type="text" id="xm" name="xm" value="${requestScope.user.xm}" /></td>
                </tr>
                <tr>
                    <td>性别：</td>
                    <td><input type="text" id="xb" name="xb" value="${requestScope.user.xb}" /></td>
                </tr>
                <tr>
                    <td>出生日期：</td>
                    <td><input type="text" id="csrq" name="csrq" value="${requestScope.user.csrq}" /></td>
                </tr>
                <tr>
                    <td>籍贯：</td>
                    <td><input type="text" id="jg" name="jg" value="${requestScope.user.jg}" /></td>
                </tr>
                <tr>
                    <td>身份证号：</td>
                    <td><input type="text" id="sfz" name="sfz" value="${requestScope.user.sfz}"  /></td>
                </tr>
                <tr>
                    <td>手机号码：</td>
                    <td><input type="text" id="sjh" name="sjh" value="${requestScope.user.sjh}"/></td>
                </tr>
                <tr> <td>组id</td> <td><input type="text" id="zid" name="zid" readonly value="${requestScope.user.zid}"/></td> </tr>
                <tr> <td>支部id</td> <td><input type="text" id="zbid" name="zbid" readonly value="${requestScope.user.zbid}"/></td> </tr>
                <tr> <td>党员id</td> <td><input type="text" id="dyid" name="dyid" readonly value="${requestScope.user.dyid}"/></td> </tr>
                <tr> <td>申请日期</td> <td><input type="text" id="sqrq" name="sqrq" value="${requestScope.user.sqrq}"/></td> </tr>
                <tr> <td>积极日期</td> <td><input type="text" id="jjrq" name="jjrq" value="${requestScope.user.jjrq}"/></td> </tr>
                <tr> <td>发展日期</td> <td><input type="text" id="fzrq" name="fzrq" value="${requestScope.user.fzrq}"/></td> </tr>
                <tr> <td>预备日期</td> <td><input type="text" id="ybrq" name="ybrq" value="${requestScope.user.ybrq}"/></td> </tr>
                <tr> <td>正式日期</td> <td><input type="text" id="zsrq" name="zsrq" value="${requestScope.user.zsrq}"/></td> </tr>
                <tr> <td>入党状态</td> <td><input type="text" id="zt" name="zt" value="${requestScope.user.zt}"/></td> </tr>
                <tr> <td>头像</td> <td><input type="text" id="tx" name="tx" value="${requestScope.user.tx}"/></td> </tr>
                <tr> <td>申请书</td>
                    <td><input type="text" id="sqs1" name="sqs1" value="${requestScope.user.sqs1}"/></td>
                    <td><input type="text" id="sqs2" name="sqs2" value="${requestScope.user.sqs2}"/></td>
                </tr>
                <tr> <td>志愿书</td>
                    <td><input type="text" id="zys1" name="zys1" value="${requestScope.user.zys1}"/></td>
                    <td><input type="text" id="zys2" name="zys2" value="${requestScope.user.zys2}"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="提交" />
                        <input type="reset" value="重置" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</div>

<%@include file="frameFoot.jsp"%>