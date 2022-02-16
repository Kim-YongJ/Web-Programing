window.onload = function() {
   document.getElementById("btnShow").addEventListener("click", func, false);
}

function func() {
    var str = "";
    str += "<table>";
    var i = 1;
    var data = ".";
    while(data !="") {
    if(confirm("데이터를 추가하시겠습니까?")) {

      data = prompt("새로운 데이터를 입력하여주세요.","");
      str += "<tr>";
      str += "<td>"+i+"</td>";
      str += "<td>"+data+"</td>";
      str += "</tr>";
      document.getElementById("disp").innerHTML = str;
      i++
    }
    else {
      str += "</table>";
    }
  }
}
