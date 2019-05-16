const express = require('express');
const mysql = require('mysql');

// Create connection
const db = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '123456',
    database : 'timesheet'
});
// Connect
db.connect((err) => {
    if(err){
        throw err;
    }
    console.log('MySql Connected...');
});
const index = express();
// Create table
index.get('/createjobtable', (req, res) => {
    let sql = 'CREATE TABLE Jobs(id int AUTO_INCREMENT, Job VARCHAR(255), Client VARCHAR(255), Name VARCHAR(255), State VARCHAR(255), Start VARCHAR(255), Due VARCHAR(255), PRIMARY KEY(id))';
    db.query(sql, (err, result) => {
        if(err) throw err;
        console.log(result);
        res.send('Posts table created...');
    });
});

// Select posts
index.get('/getposts', (req, res) => {
    let sql = `SELECT * FROM posts WHERE id = ${req.params.id}`;
    let query = db.query(sql, (err, results) => {
        if(err) throw err;
        console.log(results);
        res.send('Posts fetched...');
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



index.listen('3000', () => {
    console.log('Server started on port 3000');
});