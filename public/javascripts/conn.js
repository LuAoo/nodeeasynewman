const mysql = require('mysql');
let  connction=mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'root',
    database:'nodeeasynewman'
})
connction.connect((err) => {
    if (err) {
        console.log(err);
        return;
    }
    console.log('θΏζ₯ζε'+connction.threadId);
})

module.exports=connction;