var express = require('express');
var router = express.Router();
var articleDao = require('../dao/articleDao');
var result = require('../model/result.js');

// list article
router.get('/getArticleList', function (req, res) {
    articleDao.listArticle(function (articles) {
        res.json(result.createResult('get', true, articles));
    })
})
module.exports = router;