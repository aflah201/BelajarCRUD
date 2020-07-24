const path = require('path');
const http = require("http");
const url = require('url');
const router = require('routes')();
const view = require('swig');
const mysql = require('mysql');
const qString = require('querystring');
const express = require('express');
const bodyParser = require('body-parser');
const hbs = require('hbs');
const app = express();

const connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  database: "nodejs",
  user: "root",
  password: ""
});

connection.connect((err) => {
  if(err) throw err;
  console.log('Mysql Connected...');
})

app.set('views', path.join(__dirname,'views'));

app.set('view engine', 'hbs');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false}));

app.use('/assets', express.static(__dirname + '/public'));

//Homepage
app.get('/', (req,res) => {
  let sql = "SELECT * FROM mahasiswaku";
  let query = connection.query(sql, (err, results) => {
    if(err) throw err;
    res.render('mhs_views', {
      results: results
    });
  });
});
//Insert
app.post('/insert', (req, res) => {
  let data = {no_induk: req.body.no_induk, nama: req.body.nama, alamat: req.body.alamat};
  let sql = "INSERT INTO mahasiswaku SET ?";
  let query = connection.query(sql, data, (err, results) => {
    if(err) throw err;
    res.redirect('/');
  });
});
// Update
app.post('/update', (req,res) => {
  let sql = "UPDATE mahasiswaku SET nama='"+req.body.nama+"', alamat='"+req.body.alamat+"' WHERE no_induk="+req.body.no_induk;
  let query = connection.query(sql, (err, results) => {
    if(err) throw err;
    res.redirect('/');
  });
});
// Delete
app.post('/delete', (req,res) => {
  let sql = "DELETE FROM mahasiswaku WHERE no_induk="+req.body.no_induk+"";
  let query = connection.query(sql, (err, results) => {
    if(err) throw err;
    res.redirect('/');
  });
});
// Server Listening
app.listen(1806, () => {
  console.log('Server is running at port 1806');
});
