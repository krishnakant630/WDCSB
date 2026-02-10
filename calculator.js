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