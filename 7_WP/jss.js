function BMIC() {

var heig = document.getElementById("hhe").value;
heig =Number(heig);
var weig = document.getElementById("wwe").value;
weig =Number(weig);
var hheig =(heig*heig);
console.log(hheig);
var bmi = Math.round(10000*(weig/hheig));
console.log(bmi);
var state = undefined;
var ment1 = "당신의 키는";
var ment2 = "당신의 몸무게는";
var ment3 = "당신의 BMI는";
var ment4 = "You are";
var ment5 = "입니다";
document.getElementById("Hei").innerHTML=ment1 + heig + ment5;
document.getElementById("Wei").innerHTML=ment2 + weig + ment5;
document.getElementById("BMI").innerHTML=ment3 + bmi +ment5;
try {
if(bmi < 18.5)
    throw "You are underweight";

if (bmi < 23 && bmi>18.5)
    throw "You are normal";

if(bmi < 25 && bmi>23)
    throw "You are overweight";

if (bmi < 30 && bmi>25)
  throw  "You are obesity";

if (bmu >30)
    throw "You are very overweight";

}
catch(err) {

  document.getElementById("State").innerHTML=err;
}

}
