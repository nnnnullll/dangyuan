
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
         document.getElementById('zbid1').value=zbid;
         document.getElementById('myselect').value=0;
         document.getElementById('myselect1').value=-1;
     }
     else if(window.location.pathname=='/DangYuan2_war_exploded/GroupModify.jsp'){
         //zbid=localStorage.getItem("zbid");
         zbid=1;
         document.getElementById('zbid').value=zbid;
         document.getElementById('partyid').value=zbid;
         document.getElementById('myselect').value=0;
         document.getElementById('myselect2').value=-1;
     }

    console.log(window.location.pathname)
}

function remind() {
    alert("所属党小组名修改成功！");
}
var mytmp;
function getValue(val) {
    // var tmp=document.getElementById("myselect");
    // var index=tmp.selectedIndex ;
    // var mytmp=tmp.options[index].value;
    mytmp = val;
    if(val==1){
        document.getElementById('show1').style.display = '';
        document.getElementById('show2').style.display = 'none';
    }else if(val==2)
    {
        document.getElementById('show2').style.display = '';
        document.getElementById('show1').style.display = 'none';
    }
}
function myclick(val) {
    document.getElementById("hidden").value=val;
}
function myclick1(val) {
    document.getElementById("hidden1").value=val;
}

function getValue1(val) {
    if(val==1){
        document.getElementById('tzzz').style.display = '';
        document.getElementById('mmcz').style.display = 'none';
    }else if(val==2)
    {
        document.getElementById('tzzz').style.display = 'none';
        document.getElementById('mmcz').style.display = '';
    }
}