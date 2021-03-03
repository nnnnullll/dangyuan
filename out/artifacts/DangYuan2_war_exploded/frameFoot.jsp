<%--
  Created by IntelliJ IDEA.
  User: 14178
  Date: 2021/2/19
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

</div>
<div hidden>
    <div id="sessionStorage_id">${sessionScope.id}</div>
    <div id="sessionStorage_type">${sessionScope.type}</div>
</div>

<!-- Scripts -->
<script src="js/GroupShow.js"></script>
<!-- Bootstrap core JavaScript -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl-carousel.js"></script>
<script src="js/lightbox.js"></script>
<script src="js/custom.js"></script>
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/script.js"></script>
<script src="js/Note.js"></script>
<script src="js/bootstrap-4.0.0.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" language="JavaScript">
    let id=document.getElementById("sessionStorage_id").innerText;
    let type=document.getElementById("sessionStorage_type").innerText;
    sessionStorage.setItem("id",id);
    sessionStorage.setItem("type",type);
</script>

</body>
</html>
