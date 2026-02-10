const student = {
   name: "KK", 
    age: 33,
    address: 
    {
        city: "Gzb",
            state: "UP"
    }
} 
function displaystu(object){
    console.log(`my name is ${object.name} and age is ${object.age}`);
}
displaystu(student);