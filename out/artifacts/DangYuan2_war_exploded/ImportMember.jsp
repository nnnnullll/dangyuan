<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/2/20
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <form method="POST" enctype="multipart/form-data" action="ImportServlet" name="ImportMember">
        选择文件： <input type="file" name="Member"><br>
        <input type="submit" value="数据入库"/>
    </form>
</div>


<%@include file="frameFoot.jsp"%>


