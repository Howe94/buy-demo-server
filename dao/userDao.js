var mysql = require('mysql');
var mysqlConf = require('../conf/mysqlConf');
var userSqlMap = require('../sqlMap/userSqlMap');
var pool = mysql.createPool(mysqlConf.mysql);
module.exports = {
    login: function (loginForm,callback) {
        pool.query(userSqlMap.login,[loginForm.userName,loginForm.password], function (error, result) {
            if (error) throw error;
            callback(result);
        });
    }
}