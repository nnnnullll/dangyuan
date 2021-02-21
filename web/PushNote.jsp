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
        <form >
          <td>
            <div class="notefont">公告标题</div>
          </td>
          <td>
              <input class="notetitle" id="tm"  type="text" name="notetitle"/><br/>
          </td>
          <td class="notefont">
            <div class="notefont">公告内容</div>
          </td>
          <td>
              <textarea class="notetext" name="notetext id="nr" cols="30" rows="10"></textarea><br/>
          </td>
          <button class="notebutton" type="primary" @click="submitNote()">立即创建</button>
          <button class="notebutton" @click="resetForm()">重置</button>
        </form>
      </div>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
