var express = require('express');
var router = express.Router();
const conn = require('../public/javascripts/conn');
var sqldata={};
conn.query('select * from product',(err,data) => {
  if (err) throw err;
  sqldata.product=data;
})
conn.query('select * from news',(err,data) => {
  if (err) throw err;
  sqldata.news=data;
})
conn.query('select * from about',(err,data) => {
  if (err) throw err;
  sqldata.about=data;
})
conn.query('select * from navlist',(err,data) => {
  if (err) throw err;
  sqldata.navlist=data;
})
/* GET home page. */
router.get('/', function(req, res, next) {
  console.log(sqldata);
  res.render('index', {sqldata});
});
module.exports = router;
