function calculator() {
  return {
    add: function(a, b) {
      return a + b;
    },

    sub: function(a, b) {
      return a - b;
    },

    mul: function(a, b) {
      return a * b;
    },

    div: function(a, b) {
      return a / b;
    }
}};
let calc = calculator();

console.log(calc.add(2, 3));
console.log(calc.sub(5, 2));
console.log(calc.mul(4, 3));
console.log(calc.div(10, 2));
if (true) {
    var y = 20;
}
console.log(y);
function singleNumber(nums) {
    let result = 0;

    for (let i = 0; i < nums.length; i++) {
        result = result ^ nums[i];
    }

    return result;
}