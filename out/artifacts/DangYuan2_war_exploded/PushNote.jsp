<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>发布公告（管理员）</h3>
    <div class="mainContent">
      <div class="notebox">
          <div class="notefont">公告标题</div>
          <input class="notetitle" type="text" id="tm" name="tm"/><br/>
          <div class="notefont">公告内容</div>
          <textarea class="notetext" name="nr" id="nr" cols="30" rows="10"></textarea><br/>
          <button class="notebutton" onclick="addnote()">立即创建</button>
          <button class="notebutton" onclick="resetForm">重置</button>
      </div>
    </div>
</div>
<%@include file="frameFoot.jsp"%>
