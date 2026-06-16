// Exercise 1 - Variables
const name = "Anmol";
const age = 25;
const city = "Lucknow";
const isWorking = true;

console.log(name);
console.log(age);
console.log(city);
console.log(isWorking);

// Exercise 2 - Data Types
const myString = "Hello Anmol";
const myNumber = 42;
const myDecimal = 3.14;
const myBoolean = true;
const myNull = null;
const myArray = [1, 2, 3, 4, 5];
const myObject = {name: "Anmol", city: "Lucknow"};

console.log(typeof myString);
console.log(typeof myNumber);
console.log(typeof myBoolean);
console.log(typeof myNull);
console.log(typeof myArray);

// Exercise 3 - Template Literals
console.log(`My name is ${name} and I live in ${city}`);
console.log(`I am ${age} years old and working: ${isWorking}`);
console.log(`Two plus two is ${2 + 2}`);
console.log(`My name has ${name.length} characters`);

// Exercise 4 - Arrays
const fruits = ["apple", "banana", "mango", "orange"];

console.log(fruits);
console.log(fruits[0]);
console.log(fruits[1]);
console.log(fruits.length);

fruits.push("grapes");
console.log(fruits);

fruits.pop();
console.log(fruits);

console.log(fruits.includes("mango"));
console.log(fruits.includes("kiwi"));

// Exercise 5 - Objects
const person = {
    name: "Anmol",
    age: 25,
    city: "Lucknow",
    isWorking: true
};

console.log(person.name);
console.log(person["city"]);

person.company = "Accenture";
console.log(person.company);
console.log(person);

const employee = {
    name: "Anmol",
    address: {
        city: "Lucknow",
        state: "UP"
    }
};

console.log(employee.address.city);

// Exercise 6 - Functions
function greet(name) {
    return `Hello ${name}, welcome to QA Automation!`;
}
console.log(greet("Anmol"));
console.log(greet("Priya"));

function add(a, b) {
    return a + b;
}
console.log(add(5, 3));
console.log(add(10, 20));

function createUser(name, role = "viewer") {
    return `${name} is a ${role}`;
}
console.log(createUser("Anmol", "admin"));
console.log(createUser("Priya"));

// Exercise 7 - Arrow Functions
const multiplyArrow = (a, b) => a * b;
console.log(multiplyArrow(5, 3));

const square = n => n * n;
console.log(square(4));
console.log(square(7));

const sayHello = () => "Hello QA Engineer!";
console.log(sayHello());

const isValidEmail = email => email.includes("@") && email.includes(".");
console.log(isValidEmail("anmol@test.com"));
console.log(isValidEmail("notanemail"));