<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/18
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="frameHead.jsp"%>
<style>
    #my-img1{
        width: 400px;
        height: 250px;
    }
    #my-img2{
        width: 400px;
        height: 250px;
    }

</style>
<script>
    function change1(resouce) {
        //获取图片文件的对象
        var imgFile=resouce.files[0];
        //获取图片本地内存路径
        var url=window.URL.createObjectURL(imgFile);
        document.getElementById("my-img1").setAttribute("src",url);
        // JQuery $("#image").attr("src",url);
    }
    function change2(resouce) {
        //获取图片文件的对象
        var imgFile=resouce.files[0];
        //获取图片本地内存路径
        var url=window.URL.createObjectURL(imgFile);
        document.getElementById("my-img2").setAttribute("src",url);
        // JQuery $("#image").attr("src",url);
    }
</script>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <h3>活动剪影展示</h3>
    <form action="index.jsp">
<div >
    <img src="/img/1.jpg"  style="position: absolute;left: 60px;top:80px" id="my-img1" name="my-img1" onchange="change(this)">
    <img src="/img/1.jpg"  style="position: absolute;left: 510px;top:80px" id="my-img2" name="my-img2" onchange="change(this)">
</div>
    <div>
<a  class="file" style="position: absolute;left: 170px;top:350px">选择照片
    <input type="file"   name="p1" id="p1" onchange="change1(this)">
</a>
        <a  class="file" style="position: absolute;left: 610px;top:350px">选择照片
            <input type="file"   name="p2" id="p2" onchange="change2(this)">
        </a>
    </div>
     <input class="notetitle" type="text" id="tm" name="tm" style="position: absolute;left: 60px;top:420px;width: 60%" /><br/>
     <input  class="mysub"  type="submit" value="导入" style="position: absolute;left: 250px;top:410px" />
    </form>
</div>

<%@include file="frameFoot.jsp"%>
