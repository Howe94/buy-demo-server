var express = require('express');
var router = express.Router();
var authorDao = require('../dao/authorDao');
var result = require('../model/result.js');

// list article
router.get('/getAuthorList', function (req, res) {
    let authorTemp = req.query;
    authorDao.authorList(authorTemp,function (authors) {
        res.json(result.createResult('get', true, authors));
    })
})
module.exports = router;