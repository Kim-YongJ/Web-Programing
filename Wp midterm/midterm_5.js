function order1() {
  var li1 = document.getElementById("l1i").value;
  var li3 = document.getElementById("l3i").value;
  var emt = li3;
  li3 = li1;
  li1 = emt;
  document.getElementById("l1i").innerHTML = li1;
  document.getElementById("l3i").innerHTML = li3;
}

function order2() {

}
