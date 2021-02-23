function addnote(){
    var bt = document.getElementById('tm').value;;
    var nr = document.getElementById("nr").value;
    var d = new Date(),
	date = '';
	date += d.getFullYear() + '-'; //获取当前年份 
	date += d.getMonth() + 1 + '-'; //获取当前月份（0——11） 
	date += d.getDate() + ' ';//获取当前日期
    alert(bt+nr+date)
    window.location.href = "NoteServlet?param=add&bt="+bt+"&nr="+nr+"&sj="+date+"&dx=0";
    window.history.back(-1)
}
function deletenote(e){
    alert(e)
    window.location.href = "NoteServlet?param=delete&ggid="+e;
    window.history.back(-1)
}