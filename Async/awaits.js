function roll(num, delay) {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      console.log("Roll. no. is " + num);
      resolve(num); 
    }, delay);
  });
}
roll(12212, 1000)
  .then(() => {
    console.log("wait its getting downloaded");
    return roll(12312, 2000);
  })
  .then(() => {
    console.log("wait its getting downloaded");
    return roll(12412, 3000);
  })
  .then(() => {
    console.log("wait its almost over");
    return roll(12512, 4000);
  })
  .catch((err) => {
    console.log("Error:", err);
  })
  .finally(() => {
    console.log("Done with viva)");
  });


roll(12212, 1000)
  .then(() => (console.log("downloading..."), roll(12312, 2000)))
  .then(() => (console.log("downloading..."), roll(12412, 3000)))
  .then(() => (console.log("almost over..."), roll(12512, 4000)))
  .catch(console.log)
  .finally(() => console.log("Done with viva)"));



  // function roll(num, delay) {
//   return new Promise((resolve) => {
//     setTimeout(() => {
//       console.log("Roll. no. is " + num);
//       resolve(num);
//     }, delay);
//   });
// }
// async function run() {
//   try {
//     await roll(12212, 1000);
//     console.log("wait its getting downloaded");

//     await roll(12312, 2000);
//     console.log("wait its getting downloaded");

//     await roll(12412, 3000);
//     console.log("wait its almost over");

//     await roll(12512, 4000);
//     console.log("Finished download flow");
//   } catch (err) {
//     console.log("Error:", err);
//   } finally {
//     console.log("Done with viva");
//   }
// }

// run();
