<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2021/2/20
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script>
    function Check() {
        var strFile = document.getElementById("Member").value;
        if (strFile == "" || strFile == null) {
            alert("未上传文件!");
            return false;
        } else {
            //檔案擴展名稱
            var fileExt = document.getElementById("Member").value.substr(document.getElementById("Member").value.lastIndexOf(".")).toLowerCase();
            var allowExt = ".xls|.xlsx|";
            if (allowExt != 0 && allowExt.indexOf(fileExt + "|") == -1) {
                alert("请上传【.xls|.xlsx|】类型的图片!");
                return false;
            }
        }
    }
</script>
<%@include file="frameHead.jsp"%>
<!-- 下面是修改的页面 -->
<div class="mainBorder">
    <form method="POST" enctype="multipart/form-data" action="ImportServlet?param=importMember" name="ImportMember" onsubmit="return Check()">
        <h3>党员名单导入</h3>
        <div style="position: relative">

            <a  class="file">选择文件
                <input type="file"  name="Member" id="Member">
            </a>
            <input  class="mysub"  type="submit" value="导入数据" style="position: absolute;left: 0px;top:21px" />
        </div>
    </form>
</div>


<%@include file="frameFoot.jsp"%>


