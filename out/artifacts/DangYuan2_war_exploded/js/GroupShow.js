window.onload=function getGroupInfo() {
     if(window.location.pathname=='/DangYuan2_war_exploded/GroupShow.jsp'){
         var zid=1;
         //var zid=localStorage.getItem("zid");
         window.location.href='GroupServlet?param=search&zid='+zid;
     }
     else if(window.location.pathname=='/DangYuan2_war_exploded/PartyShow.jsp'){
         var zbid=1;
         //var zbid=localStorage.getItem("zid");
         window.location.href='PartyServlet?param=search&zbid='+zbid;
     }
     else if(window.location.pathname=='/DangYuan2_war_exploded/PartyModify.jsp'){
         //zbid=localStorage.getItem("zbid");
         zbid=1;
         document.getElementById('zbid').value=zbid;
     }
     else if(window.location.pathname=='/DangYuan2_war_exploded/GroupModify.jsp'){
         //zbid=localStorage.getItem("zbid");
         zbid=1;
         document.getElementById('zbid').value=zbid;
     }

    console.log(window.location.pathname)
}

function remind() {
    alert("所属党小组名修改成功！");
}


