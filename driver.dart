/*
===========================================================
Dart Assignment - Moodle Template
Course: Flutter & Dart Programming
Syllabus Coverage:
- Functions & Control Flow (Calculator)
- Lists & Loops (Todo Logic)
- OOP (Classes, Inheritance, Encapsulation)
- Async / Future / async-await
Instructions:
- DO NOT change function names
- DO NOT modify driver function
- Implement logic only inside marked sections
- Each function carries 1 mark
===========================================================
*/

/*
-----------------------------------------------------------
DUMMY DATA
-----------------------------------------------------------
*/

List<String> todoList = ["Buy Milk", "Study Dart", "Submit Assignment"];

Map<String, dynamic> studentData = {
  "name": "Aarav",
  "id": 101,
  "course": "B.Tech",
};

/*
-----------------------------------------------------------
OOP CLASSES (DO NOT MODIFY)
-----------------------------------------------------------
*/

class Person {
  String name;

  Person(this.name);

  String getRole() {
    return "Person";
  }
}

class Student extends Person {
  int id;
  String course;

  Student(String name, this.id, this.course) : super(name);

  @override
  String getRole() {
    return "Student";
  }
}

class Professor extends Person {
  String subject;

  Professor(String name, this.subject) : super(name);

  @override
  String getRole() {
    return "Professor";
  }
}

/*
-----------------------------------------------------------
FUNCTION 1
-----------------------------------------------------------
Purpose:
Perform basic arithmetic using SWITCH statement

Parameters:
- a (int)
- b (int)
- operator (String: "+", "-", "*", "/")

Constraints:
- Must use switch
- Handle division by zero
*/

dynamic calculate(int a, int b, String operator) {
  // STUDENT CODE STARTS HERE

  switch (operator) {
    case "+":
      return a + b;

    case "-":
      return a - b;

    case "*":
      return a * b;

    case "/":
      if (b == 0) {
        return "Error";
      }
      return a / b;

    default:
      return "Invalid Operator";
  }

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 2
-----------------------------------------------------------
Purpose:
Add a task to Todo list
*/

List<String> addTask(List<String> list, String task) {
  // STUDENT CODE STARTS HERE

  list.add(task);
  return list;

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 3
-----------------------------------------------------------
Purpose:
Remove a task from Todo list
*/

List<String> removeTask(List<String> list, String task) {
  // STUDENT CODE STARTS HERE

  list.remove(task);
  return list;

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 4
-----------------------------------------------------------
Purpose:
View all tasks
*/

void viewTasks(List<String> list) {
  // STUDENT CODE STARTS HERE

  for (String task in list) {
    print(task);
  }

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 5
-----------------------------------------------------------
Purpose:
Create Student object using Map data
*/

Student createStudent(Map<String, dynamic> data) {
  // STUDENT CODE STARTS HERE

  return Student(data["name"], data["id"], data["course"]);

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 6
-----------------------------------------------------------
Purpose:
Display role of a Person (Polymorphism)
*/

String displayRole(Person person) {
  // STUDENT CODE STARTS HERE

  return person.getRole();

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 7
-----------------------------------------------------------
Purpose:
Count number of tasks using LOOP
*/

int countTasks(List<String> list) {
  // STUDENT CODE STARTS HERE

  int count = 0;

  for (var task in list) {
    count++;
  }

  return count;

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 8
-----------------------------------------------------------
Purpose:
Simulate fetching data using Future
*/

Future<String> fetchData(String message) {
  // STUDENT CODE STARTS HERE

  return Future.delayed(Duration(seconds: 2), () {
    return message;
  });

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 9
-----------------------------------------------------------
Purpose:
Use ASYNC/AWAIT to consume Future
*/

Future<void> consumeFuture(Future<String> future) async {
  // STUDENT CODE STARTS HERE

  String result = await future;
  print(result);

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 10
-----------------------------------------------------------
Purpose:
Create Professor object
*/

Professor createProfessor(String name, String subject) {
  // STUDENT CODE STARTS HERE

  return Professor(name, subject);

  // STUDENT CODE ENDS HERE
}

/*
-----------------------------------------------------------
FUNCTION 11 (DRIVER FUNCTION)
-----------------------------------------------------------
Purpose:
Test all student functions
DO NOT MODIFY THIS FUNCTION
-----------------------------------------------------------
*/

void driver() async {
  print("---- DART ASSIGNMENT DRIVER START ----");

  print("Calculator: ${calculate(10, 5, "+")}");
  print("Calculator Error: ${calculate(10, 0, "/")}");

  todoList = addTask(todoList, "Practice Flutter");
  todoList = removeTask(todoList, "Buy Milk");
  viewTasks(todoList);

  print("Task Count: ${countTasks(todoList)}");

  Student student = createStudent(studentData);
  Professor professor = createProfessor("Dr. Kumar", "AI");

  print("Student Role: ${displayRole(student)}");
  print("Professor Role: ${displayRole(professor)}");

  await consumeFuture(fetchData("Data Loaded Successfully"));

  print("---- DART ASSIGNMENT DRIVER END ----");
}

/*
-----------------------------------------------------------
RUN DRIVER
-----------------------------------------------------------
*/

void main() async {
  await driver();
}
