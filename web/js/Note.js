function addnote(){
    var bt = document.getElementById('tm').value;;
    var nr = document.getElementById("nr").value;
    var d = new Date(),
	date = '';
	date += d.getFullYear() + '-'; //获取当前年份
	date += d.getMonth() + 1 + '-'; //获取当前月份（0——11）
	date += d.getDate() + ' ';//获取当前日
    alert("创建成功！");
    var dx;
    if(localStorage.getItem('type')=="admin")
        dx=0;
    else
        dx=1;
    window.location.href = "NoteServlet?param=add&bt="+bt+"&nr="+nr+"&sj="+date+"&dx="+dx;
}
function deletenote(e){
    alert("删除成功！");
    window.location.href = "NoteServlet?param=delete&ggid="+e;

}
function deletenotee(e){
    alert("删除成功！");
    window.location.href = "NoteServlet?param=delete&tp=gly&ggid="+e;

}
