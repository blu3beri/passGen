const len = 10;
let password = '';

for (let i = 0; i < len; i++) {
  const ran = +(Math.random() * (126 - 32) + 32).toFixed(0);
  password += String.fromCharCode(ran);
}

console.log(password);
