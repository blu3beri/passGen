const len = 10;
const capitals = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const lowercase = 'abcdefghijklmnopqrstuvwxyz';
const numbers = '0123456789';
const specials = '~!"#$%&()*+,-./:;<=>?@';
const combined = capitals.concat(lowercase, numbers, specials);
let password = '';

function getChar(charString: string): string {
  const ran = +(Math.random() * (charString.length - 1) + 0).toFixed(0);
  return charString[ran];
}

for (let i = 0; i < len; i++) {
  switch (i) {
    case 0:
      password += getChar(capitals);
      break;
    case 1:
      password += getChar(capitals);
      break;
    case 2:
      password += getChar(lowercase);
      break;
    case 3:
      password += getChar(lowercase);
      break;
    case 4:
      password += getChar(numbers);
      break;
    case 5:
      password += getChar(numbers);
      break;
    case 6:
      password += getChar(specials);
      break;
    case 7:
      password += getChar(specials);
    default:
      password += getChar(combined);
      break;
  }
}

console.log(password);
