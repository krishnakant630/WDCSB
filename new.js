function calculator() {
  return {
    add: (a, b) => a + b
  };
}

const c = calculator();
console.log(c.add(2, 3));
