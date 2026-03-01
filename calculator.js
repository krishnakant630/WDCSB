// // function calculator() {
// //   return {
// //     add: function(a, b) {
// //       return a + b;
// //     },

// //     sub: function(a, b) {
// //       return a - b;
// //     },

// //     mul: function(a, b) {
// //       return a * b;
// //     },

// //     div: function(a, b) {
// //       return a / b;
// //     }
// // }};
// // let calc = calculator();

// // console.log(calc.add(2, 3));
// // console.log(calc.sub(5, 2));
// // console.log(calc.mul(4, 3));
// // console.log(calc.div(10, 2));
// // if (true) {
// //     var y = 20;
// // }
// // console.log(y);
// // function singleNumber(nums) {
// //     let result = 0;

// //     for (let i = 0; i < nums.length; i++) {
// //         result = result ^ nums[i];
// //     }

// //     return result;



// // }
// function concatenatedBinary(n) {
//     const MOD = 1000000007;
//     let result = 0;
//     let bitLength = 0;

//     for (let i = 1; i <= n; i++) {
//         // check power of 2
//         if ((i & (i - 1)) === 0) {
//             bitLength++;
//         }

//         result = ((result << bitLength) | i) % MOD;
//     }

//     return result;
// }

// // ===== Driver Code =====
// const readline = require("readline");

// const rl = readline.createInterface({
//     input: process.stdin,
//     output: process.stdout
// });

// rl.on("line", function (line) {
//     const n = parseInt(line.trim());
//     console.log(concatenatedBinary(n));
//     rl.close();
// });
function isPrime(n) {
    if (n <= 1) return false;
    if (n === 2) return true;
    if (n % 2 === 0) return false;

    for (let i = 3; i * i <= n; i += 2) {
        if (n % i === 0) return false;
    }

    return true;
}
function isNonPrime(n) {
    return n > 1 && !isPrime(n);
    
}
function isPerfectSquare(x) {
    let s = Math.floor(Math.sqrt(x));
    return s * s === x;
}
function isFibonacci(n) {
    if (n < 0) return false;

    return isPerfectSquare(5 * n * n + 4) ||
           isPerfectSquare(5 * n * n - 4);
}
let num = 13;

console.log("Prime:", isPrime(num));
console.log("Non Prime:", isNonPrime(num));
console.log("Fibonacci:", isFibonacci(num));
