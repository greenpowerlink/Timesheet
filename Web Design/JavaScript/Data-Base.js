const express = require('express');
const mysql = require('mysql');

// Create connection
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '12345',
    database: 'teckglobal'

});


// Connect
db.connect((err) => {
    if (err) {
        throw err;
    }
    console.log('MySql Connected...');
});

const app = express();


//create db   http://127.0.0.1:3000/createdb

app.get('/createdb', (req, res) => {
    let sql = 'CREATE DATABASE teckglobal';
    db.query(sql, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('Database created...')
    });
});

// create table  http://127.0.0.1:3000/createemployeetable

app.get('/createemployeetable', (req, res) => {
    let sql = 'CREATE TABLE employeeList(emp_id int NOT NULL AUTO_INCREMENT, first_name VARCHAR(25), last_name VARCHAR(25), emailAddress VARCHAR(40) UNIQUE, role_id int, gender VARCHAR(1), super_id int, PRIMARY KEY(emp_id))';
    db.query(sql, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('Employee table created... ');
    });
});

//create role table http://127.0.0.1:3000/createroletable

app.get('/createroletable', (req, res) => {
    let sql = 'CREATE TABLE role(role_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT, position VARCHAR(40))';
    db.query(sql, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('Roletable created... ');
    });
});

//update parameter  http://127.0.0.1:3000/updatedattributes
app.get('/updatedattributes', (req, res) => {
    let sql = 'ALTER TABLE employeelist ADD FOREIGN KEY (role_id) REFERENCES role(role_id) ON DELETE SET NULL';
    db.query(sql, (err, result) => {
        if (err) throw err;
        console.log(result);
        res.send('Attributed updated...');
    });
});


// Select employee http://127.0.0.1:3000/getemployeelist

app.get('/getemployeelist', (req, res) => {
    let sql = `SELECT * FROM employeelist WHERE emp_id=1`;
    let query = db.query(sql, (err, results) => {
        if (err) throw err;
        console.log(results);
        res.send('Employees fetched...');
    });
});



// Insert Job Into the Data Base
//app.get('/Add Job', (req, res) => {
//   let post = {title:'Post One', body:'This is post number one'};
// let sql = 'INSERT INTO posts SET ?';
//  let query = db.query(sql, post, (err, result) => {
//      if(err) throw err;
//     console.log(result);
//    res.send('Post 1 added...');
//   });
//});

app.listen('3000', () => {
    console.log('Server started on port 3000');
});