// write an arrow function isEven that takes a number and returns "Even" or "Odd"
// const isEven = (number) => {
//     if (number % 2 === 0) {
//         return "Even";
//     } else {
//         return "Odd";
//     }
// };
// console.log(isEven(4)); 
// console.log(isEven(7)); 
// write an arrow function reverseString (str) that returns the reversed string 
const reverseString = (str) => {
    return str.split("").reverse().join("");
};

console.log(reverseString("Krishnakant"));
