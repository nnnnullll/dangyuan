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
    <!-- 下面是修改的页面 -->
    <div class="ShowActivity-Border">
        <div class="ShowActivity-container">
            <c:forEach items="${sessionScope.activityList}" var="item" varStatus="xh">
                <c:if test="${xh.index%2==0}">
                    <div class="isotope-item" style="position: absolute; left: 0px; top:${xh.index}*394 px;">
                        <figure class="snip1321">
                            <img src=${photoArr[xh.index]} alt="sq-sample26"/>
                            <figcaption>
                                <a href=${photoArr[xh.index]}  data-lightbox="image-1" data-title="Caption"><i
                                        class="fa fa-search"></i></a>
                                <h4>${item.hddd}</h4>
                                <span>${item.hdbt}</span>
                            </figcaption>
                        </figure>
                    </div>
                </c:if>
                <c:if test="${xh.index%2==1}">
                    <div class="isotope-item" data-type="people"
                         style="position: absolute; left: 462px; top: ${xh.index}*394px;">
                        <figure class="snip1321">
                            <img src=${photoArr[xh.index]} alt="sq-sample26"/>
                            <figcaption>
                                <a href=${photoArr[xh.index]} data-lightbox="image-1" data-title="Caption"><i
                                        class="fa fa-search"></i></a>
                                <h4>${item.hddd}</h4>
                                <span>${item.hdbt}</span>
                            </figcaption>
                        </figure>
                    </div>
                </c:if>
            </c:forEach>

        </div>
    </div>
<%@include file="frameFoot.jsp"%>
