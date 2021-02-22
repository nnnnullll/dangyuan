<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/2/22
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <form method="POST" enctype="multipart/form-data" action="ImportServlet?param=importGroup" name="ImportGroup">
        <h3>党小组名单导入</h3>
        <div>
            <h4>选择文件<input class="file"  type="file" name="Group"></h4>
        </div>
        <td colspan="2">
            <input  class="mysub"  type="submit" value="导入数据"  />
        </td>
    </form>
</div>


<%@include file="frameFoot.jsp"%>


