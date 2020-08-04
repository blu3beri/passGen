const len = 10;
let password = '';

function getRandomNumber() {
  return +(Math.random() * (126 - 32) + 32).toFixed(0);
}

for (let i = 0; i < len; i++) {
  const ran = getRandomNumber();
  password += String.fromCharCode(ran);
}

console.log(password);
