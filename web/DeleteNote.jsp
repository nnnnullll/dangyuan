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
    <h3>删除公告</h3>
    <div class="mainContent">

      <div class="rightmainbox">
        <div class="notelist_title">
          <div class="notelist_title_text">公告列表</div>
        </div>
        <div class="notelist_lan">
          <div class="notelist_lan1">发布时间</div>
          <div class="notelist_lan3">公告内容</div>
          <div class="notelist_lan4">删除</div>
        </div>
        <div v-for="note in notes" :key="note.key" class="notelistbox">
          <div class="notelistrq">日期1</div>
          <div class="notelistnr">
            <div class="notelistnr_bt">标题1</div>
            <div class="notelistnr_nr">内容1</div>
          </div>
          <div class="notelistsc">
            <el-button @click="condeletenote(note.ggh)">删除</el-button>
          </div>
        </div>
      </div>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
