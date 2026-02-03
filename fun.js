function person (){
    this.age = 25;
    setTimeout(function (){
        console.log(this.age);
    },1000)
    }
    new person(); 
