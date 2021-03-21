const express = require('express');
var conn = require('../public/javascripts/conn');
var router = express.Router();

// data
var sqldata = {}
// 配置路由
router.get('/:id', (req, res, next) => {
    var id = req.params.id;
    console.log(id);
    conn.query(`select * from product where id='${id}'`, (err, data) => {
        if (err) {
            throw err;
        }
        sqldata.alldata = data
    })
    conn.query(`select img from product`, (err, data) => {
        if (err) {
            throw err;
        }
        res.render('product', { sqldata, sqlimg: data });
        // sqldata.allimage = data
    })
    // console.log(sqldata);
})
module.exports = router;

