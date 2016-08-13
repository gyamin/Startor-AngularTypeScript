class Student {
    fullName: string;
    constructor(public firstName, public middleInitial, public lastName) {
        this.fullName = firstName + " " + middleInitial + " " + lastName;
    }
}

interface Person {
    firstName: string;
    lastName: string;
}

function greeter(person: Person) {
    return "Hello, " + person.firstName + " " + person.lastName;
}

var user = new Student("Jane", "M.", "User");

document.body.innerHTML = greeter(user);
console.log(user.fullName);


function varTest() {
    var x = 31;
    if (true) {
        var x = 71;  // 同じ変数です!
        console.log(x);  // 71
    }
    console.log(x);  // 71
}

function letTest() {
    let x = 31;
    if (true) {
        let x = 71;  // 異なる変数
        console.log(x);  // 71
    }
    console.log(x);  // 31
}

varTest();
letTest();
