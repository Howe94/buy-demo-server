var mysql = require('mysql');
var mysqlConf = require('../conf/mysqlConf');
var authorSqlMap = require('../sqlMap/authorSqlMap');
var pool = mysql.createPool(mysqlConf.mysql);
module.exports = {
    authorList: function (authorTemp, callback) {
        console.log(authorTemp,"authorTemp")
        pool.query(authorSqlMap.list,[+authorTemp.startIndex,+authorTemp.endIndex], function (error, result) {
            if (error) throw error;
            callback(result);
        });
    }
}