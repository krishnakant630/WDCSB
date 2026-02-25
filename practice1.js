// const a =10;
// const b=20;
// console.log(a+b);
function calculator(){
    return {
    add : function(a,b){
        return a+b;
    },
    sub : function(a,b){
        return a-b;
    },
    mul : function(a,b){
        return a*b;
    },
    div : function(a,b){
        return a/b;
    },
    };
}
    let calc =calculator();
    console.log(calc.add(10,12));
    console.log(calc.sub(35,20));
    console.log(calc.mul(5,6));
    console.log(calc.div(200,10));
