// const add = (a, b) => {
//   return a + b;
// };
// console.log(add(2,3));
// const person = {
//   name: "KK",
//   normalFunc: function () {
//     console.log(this.name);
//   },
//   arrowFunc: () => {
//     console.log(this.name);
//   }
// };

// person.normalFunc(); // "KK"
// person.arrowFunc();  // undefined (in most cases)

// Max element in array 
const arr = [5, 2, 9, 1, 7];

let max = arr[0];

for (let i = 1; i < arr.length; i++) {
  if (arr[i] > max) {
    max = arr[i];
  }
}

console.log(max); 
// Min element in array
let min =arr[0];
for(let i=1;i<arr.length;i++){
if(arr[i]<min){
  min =arr[i];
}
}
console.log(min);
// linear search
let k=5
for(let i=1;i<arr.length;i++){
  if(arr[i]==k){
    
  }
}
console.log("Element found");
console.log(k);