// function aa(){
//     console.log("First");
// }
// setTimeout(aa,20000);
// setTimeout(() => {
//     console.log("First");
// },4000);
// let count =0;
// let id=
//  setInterval(() => {
//     console.log("First");
//     count++;
//     if (count === 5){
//         clearInterval(id);
//     }
// },2000);

function roll(num,wait,next){
    setTimeout(() => {
        console.log("Roll. no. is " + num);
        if (next) next();
    }, wait);
}
roll(12212, 1000, () => {
    console.log("Wait its getting downloaded");
    roll(12312, 2000, () => {
        console.log("Wait its getting downloaded");
        roll(12412, 3000, () => {
            console.log("Wait its almost over");
        roll(12512, 4000);     
       });
    });
});