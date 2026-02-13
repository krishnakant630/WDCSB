const add = (a, b) => {
  return a + b;
};
console.log(add(2,3));
const person = {
  name: "KK",
  normalFunc: function () {
    console.log(this.name);
  },
  arrowFunc: () => {
    console.log(this.name);
  }
};

person.normalFunc(); // "KK"
person.arrowFunc();  // undefined (in most cases)
