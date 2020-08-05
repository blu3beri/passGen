var len = 10;
var capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
var lowercase = 'abcdefghijklmnopqrstuvwxyz';
var numbers = '0123456789';
var specials = '~!"#$%&()*+,-./:;<=>?@';
var combined = capitals.concat(lowercase, numbers, specials);
var password = '';
function getChar(charString) {
    var ran = +(Math.random() * (charString.length - 1) + 0).toFixed(0);
    return charString[ran];
}
for (var i = 0; i < len; i++) {
    switch (i) {
        case 0:
        case 1:
            password += getChar(capitals);
            break;
        case 2:
        case 3:
            password += getChar(lowercase);
            break;
        case 4:
        case 5:
            password += getChar(numbers);
            break;
        case 6:
        case 7:
            password += getChar(specials);
        default:
            password += getChar(combined);
            break;
    }
}
console.log(password);
