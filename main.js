var len = 10;
var password = '';
for (var i = 0; i < len; i++) {
    var ran = +(Math.random() * (126 - 32) + 32).toFixed(0);
    password += String.fromCharCode(ran);
}
console.log(password);
