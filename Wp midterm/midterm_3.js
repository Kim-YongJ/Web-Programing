var price = 0;
var price1 = 0;
var price2 = 0;
var price3 = 0;
var del = 3000;

function SUBMIT() {
addre = document.getElementById("addre").value;
che1 = document.getElementsByName('che1').value;
che2 = document.getElementsByName('che2').value;
che3 = document.getElementsByName('che3').value;
numbe1 = document.getElementById('numb1').value;
numbe1 = Number(numbe1);
numbe2 = document.getElementById('numb2').value;
numbe2 = Number(numbe2);
numbe3 = document.getElementById('numb3').value;
numbe3 = Number(numbe3);
 if(addre==""){
   alert("주소를 입력하십시오");
 }
 else {
   if(che1==undefined) {
     price1 += numbe1 * 3000;
     document.getElementById('price1').innerHTML=price1;
    }
  if(che2==undefined) {
    price2 += numbe2 * 4000;
    document.getElementById('price2').innerHTML=price2;
    }
  if(che3==undefined) {
    price3 += numbe3 * 500;
    document.getElementById('price3').innerHTML=price3;
    }
  }
  price = price1+price2+price3;
  if(price>=20000){
  str ="총 구매금액은 " + price + "원 입니다." + "<br><br>";
  document.getElementById('result').innerHTML=str;
  }
  else {
    price += del;
    str ="총 구매금액은 " +price + "원 입니다." + "<br><br>";
    document.getElementById('result').innerHTML=str;
  }
}
