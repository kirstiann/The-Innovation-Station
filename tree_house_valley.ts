// create class for The Innovation Station
class TheInnovationStation {
    // define constructor to initialize class variables
    constructor() {
        this.students = []; // array of students attending The Innovation Station
        this.classes = []; // array of classes offered at The Innovation Station
        this.projects = []; // array of projects worked on at The Innovation Station
    }
    
    // define method to add student to The Innovation Station
    addStudent(student) {
        this.students.push(student);
    }
    
    // define method to get a list of students attending The Innovation Station
    getStudents() {
        return this.students;
    }
    
    // define method to add a class to The Innovation Station
    addClass(className) {
        this.classes.push(className);
    }
    
    // define method to get a list of classes offered at The Innovation Station
    getClasses() {
        return this.classes;
    }
    
    // define method to add a project to The Innovation Station
    addProject(projectName) {
        this.projects.push(projectName);
    }
    
    // define method to get a list of projects worked on at The Innovation Station
    getProjects() {
        return this.projects;
    }
    
    // define method to enroll student in class at The Innovation Station
    enrollStudentInClass(student, className) {
        // check if class is offered at The Innovation Station
        if (classes.indexOf(className) !== -1) {
            student.classes.push(className);
        }
        else {
            console.log('Class is not available at The Innovation Station');
        }
    }
    
    // define method to assign a project to a student
    assignProjectToStudent(student, projectName) {
        // check if project is available at The Innovation Station
        if (projects.indexOf(projectName) !== -1) {
            student.projects.push(projectName);
        }
        else {
            console.log('Project is not available at The Innovation Station');
        }
    }
    
    // define method to get a list of classes a student is enrolled in
    getStudentClasses(student) {
        return student.classes;
    }
    
    // define method to get a list of projects a student is working on
    getStudentProjects(student) {
        return student.projects;
    }
}

// create class for Student
class Student {
    // define constructor to initialize class variables
    constructor(name, age) {
        this.name = name;
        this.age = age;
        this.classes = []; // array of classes student is enrolled in
        this.projects = [] // array of projects student is working on
    }
    
    // define method to get student's name
    getName() {
        return this.name;
    }
    
    // define method to get student's age
    getAge() {
        return this.age;
    }
    
    // define method to enroll student in a class
    enrollInClass(className) {
        this.classes.push(className);
    }
    
    // define method to assign a project to a student
    assignProject(projectName) {
        this.projects.push(projectName);
    }
    
    // define method to get a list of classes student is enrolled in
    getClasses() {
        return this.classes;
    }
    
    // define method to get a list of projects student is working on
    getProjects() {
        return this.projects;
    }
}

// create an instance of TheInnovationStation
let theInnovationStation = new TheInnovationStation();

// create an instance of Student
let student = new Student('John', 18);

// add student to TheInnovationStation
theInnovationStation.addStudent(student);

// get list of students attending TheInnovationStation
let students = theInnovationStation.getStudents();

// add a class to TheInnovationStation
theInnovationStation.addClass('Web Development');

// get list of classes offered at TheInnovationStation
let classes = theInnovationStation.getClasses();

// enroll student in a class offered at TheInnovationStation
theInnovationStation.enrollStudentInClass(student, 'Web Development');

// get list of classes student is enrolled in
let studentClasses = theInnovationStation.getStudentClasses(student);

// add a project to TheInnovationStation
theInnovationStation.addProject('Build a Website');

// get list of projects worked on at TheInnovationStation
let projects = theInnovationStation.getProjects();

// assign project to student
theInnovationStation.assignProjectToStudent(student, 'Build a Website');

// get list of projects student is working on
let studentProjects = theInnovationStation.getStudentProjects(student);