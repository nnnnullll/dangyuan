<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/23
  Time: 21:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>公 告</h3>
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
            <form action="NoteServlet?param=searchbydx&dxx=0" method="post">


                <div class="notelistbox">
                    <div class="notelistrq">${requestScope.notelist[0].sj}</div>
                    <div class="notelistnr">
                        <div class="notelistnr_bt">${requestScope.notelist[0].bt}</div>
                        <div class="notelistnr_nr">${requestScope.notelist[0].nr}</div>
                    </div>
                    <div class="notelistsc">
                        <!-- <button onclick="deletenote(requestScope.notelist[0].ggid)">删除</button> -->
                        <button onclick="deletenote(1)">删除</button>
                    </div>
                </div>

            </form>
            </tr>
            </form>

        </div>
    </div>

</div>


<%@include file="frameFoot.jsp"%>
