module.exports = {
    mysql: {
        host: 'localhost',
        user: 'root',
        password: '0102cassie',
        database:'howeBlog',
        // 最大连接数，默认为10
        connectionLimit: 10,
        serverTimezone:'Asia/Shanghai',
        multipleStatements: true
    }
};