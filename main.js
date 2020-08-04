var len = 10;
var password = '';
function getRandomNumber() {
    return +(Math.random() * (126 - 32) + 32).toFixed(0);
}
for (var i = 0; i < len; i++) {
    var ran = getRandomNumber();
    password += String.fromCharCode(ran);
}
console.log(password);
