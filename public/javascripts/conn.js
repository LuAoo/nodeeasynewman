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
    console.log('连接成功'+connction.threadId);
})

module.exports=connction;