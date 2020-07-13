var mysql = require('mysql');
var mysqlConf = require('../conf/mysqlConf');
var articleSqlMap = require('../sqlMap/articleSqlMap');
var pool = mysql.createPool(mysqlConf.mysql);
module.exports = {
    listArticle: function (callback) {
        pool.query(articleSqlMap.list, function (error, result) {
            if (error) throw error;
            callback(result);
        });
    }
}