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
<style>
    #my-img1{
        width: 400px;
        height: 250px;
    }
    #my-img2{
        width: 400px;
        height: 250px;
    }
    #my-img3{
        width: auto;
        height: 250px;
    }
</style>
<script>
    function assure(){
        var key=document.getElementById("key");
        if(key.value.length==0){
            alert("输入密码不能为空！")
            return false;
        }else{
            alert("确定修改密码？")
            return true;
        }
    }
    function getVal2(val) {
        if(val==1){
            document.getElementById('grxx').style.display = '';
            document.getElementById('xgmm').style.display = 'none';
            document.getElementById('xgtx').style.display = 'none';
            document.getElementById('sczy').style.display = 'none';
        }else if(val==2)
        {
            document.getElementById('grxx').style.display = 'none';
            document.getElementById('xgmm').style.display = '';
            document.getElementById('xgtx').style.display = 'none';
            document.getElementById('sczy').style.display = 'none';
        }else if(val==3){
            document.getElementById('grxx').style.display = 'none';
            document.getElementById('xgmm').style.display = 'none';
            document.getElementById('xgtx').style.display = '';
            document.getElementById('sczy').style.display = 'none';
        }
        else if(val==4){
            document.getElementById('grxx').style.display = 'none';
            document.getElementById('xgmm').style.display = 'none';
            document.getElementById('xgtx').style.display = 'none';
            document.getElementById('sczy').style.display = '';
        }
    }
    function change11(resouce) {
        //获取图片文件的对象
        var imgFile=resouce.files[0];
        //获取图片本地内存路径
        var url=window.URL.createObjectURL(imgFile);
        document.getElementById("my-img1").setAttribute("src",url);
        // JQuery $("#image").attr("src",url);
    }
    function change22(resouce) {
        //获取图片文件的对象
        var imgFile=resouce.files[0];
        //获取图片本地内存路径
        var url=window.URL.createObjectURL(imgFile);
        document.getElementById("my-img2").setAttribute("src",url);
        // JQuery $("#image").attr("src",url);
    }
    function change33(resouce) {
        //获取图片文件的对象
        var imgFile=resouce.files[0];
        //获取图片本地内存路径
        var url=window.URL.createObjectURL(imgFile);
        document.getElementById("my-img3").setAttribute("src",url);
        // JQuery $("#image").attr("src",url);
    }
</script>
<div class="mainBorder">
        <h3>修改个人信息</h3>
        <select style="width: 200px;margin-top: 10px;margin-left: 30px" class="myinput"  id="myselect" onclick="getVal2(this.value)" >
            <option value=1>修改个人信息</option>
            <option value=2>修改密码</option>
            <option value=3>修改头像</option>
            <option value=4>上传申请书/志愿书</option>
        </select>
        <div id="grxx" >
            <div class="mainContent" style="margin-top: 10px;margin-left: 30px">
                <form action="userServlet?param=doModify" method="post" class="table">
                    <%--    enctype="multipart/form-data"--%>
                        <table  id="showNote"  >
                            <tbody>
                            <tr>
                                <td bgcolor="#a23e48" style="font-size: 20px; color: #fff "  height="40px" colspan="4" >
                                    修改个人信息</td>
                            </tr>
                            <tr>
                                <td  width="16%">姓　　名：</td>
                                <td><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text"  name="xm" value="${requestScope.user.xm}" /></td>
                                <td  width="16%">性　　别：</td>
                                <td><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text"  name="xb" value="${requestScope.user.xb}" /></td>
                            </tr>
                            <tr>
                                <td >出生日期</td>
                                <td><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="csrq" value="${requestScope.user.csrq}" /></td>
                                <td >籍贯</td>
                                <td><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="jg" value="${requestScope.user.jg}" /></td>
                            </tr>
                            <tr>
                                <td >证件号码</td>
                                <td colspan="3"><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="sfz" value="${requestScope.user.sfz}" /></td>
                            </tr>
                            <tr>
                                <td >手机号</td>
                                <td colspan="3"><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="sjh" value="${requestScope.user.sjh}" /></td>

                            </tr>
                            <tr>
                                <td >党支部</td>
                                <td >${requestScope.user.zbm}</td>
                                <c:if test="${requestScope.user.zm!=null}">
                                    <td >党小组</td>
                                    <td >${requestScope.user.zm}</td>
                                </c:if>
                                <c:if test="${requestScope.user.zm==null}">
                                    <td colspan="2"></td>
                                </c:if>

                            </tr>
                            <tr>
                                <td  >申请日期</td>
                                <td ><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="sqrq" value="${requestScope.user.sqrq}" /></td>
                                <td  >积极日期</td>
                                <td ><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="jjrq" value="${requestScope.user.jjrq}" /></td>
                            </tr>
                            <tr>
                                <td >预备日期</td>
                                <td ><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="ybrq" value="${requestScope.user.ybrq}" /></td>
                                <td >正式日期</td>
                                <td ><input  style="border:none;overflow:hidden;width: 100%; height: 100%" type="text" name="zsrq" value="${requestScope.user.zsrq}" /></td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center">
                                    <button type="submit" style="font-size: 16px;">修改</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                </form>
            </div>
        </div>

        <div id="xgmm" style="margin-top: 10px;margin-left: 30px ;display: none">
            <form action="userServlet?param=ModifyPwd" method="post" >
            <table width="800px">
                <tr>
                    <td class="mytext">新密码</td>
                    <td><input style="width: 100%; height: 100%" class="myinput" type="text"  id="key" name="mm" placeholder="新密码"  /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input class="mysub" style="width: 180px;margin-left: 408px;" type="submit" onsubmit="return assure()" value="提交" />
                    </td>
                </tr>
            </table>
            </form>
        </div>
    <div id="xgtx" style="margin-top: 10px;margin-left: 30px ;display: none">

            <form action="photoServlet?param=tx" method="post"  enctype="multipart/form-data">
                <div>
                    <img src="images/tx.png"  style="position: absolute;left: 240px;top:180px" id="my-img3" name="my-img3" onchange="change(this)">
                </div>
    <div style="position: relative" style="margin-top: 180px;">

        <a  class="file" style="position: absolute; margin-top: 300px;">选择头像
            <input type="file"   name="photo" id="photo" onchange="change33(this)">
        </a>
        <input  class="mysub"  type="submit" value="修改" style="position: absolute;left: 0px;top:321px" />
    </div>
            </form>

    </div>
    <div id="sczy" style="margin-top: 80px;margin-left: 60px;display: none">
            <form action="photoServlet?param=zys" method="post"  enctype="multipart/form-data">
                <div>
                    <img src="img/0102_02.png"  style="position: absolute;left: 60px;top:180px" id="my-img1" name="my-img1" onchange="change(this)">
                    <img src="img/0102_02.png"  style="position: absolute;left: 510px;top:180px" id="my-img2" name="my-img2" onchange="change(this)">
                </div>
                <div>
                    <a  class="file" style="position: absolute;left: 170px;top:450px">选择申请书
                        <input type="file"   name="p1" id="p1" onchange="change11(this)">
                    </a>
                    <a  class="file" style="position: absolute;left: 610px;top:450px">选择志愿书
                        <input type="file"   name="p2" id="p2" onchange="change22(this)">
                    </a>
                </div>
               <input  class="mysub"  type="submit" value="导入" style="position: absolute;left: 0px;top:510px" />
            </form>
    </div>

</div>

<%@include file="frameFoot.jsp"%>