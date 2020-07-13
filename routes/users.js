var express = require('express');
var router = express.Router();
var userDao = require('../dao/userDao');
var result = require('../model/result.js');
/* GET users listing. */
router.get('/', function (req, res, next) {
  res.send('respond with a resource');
});
/**
 * login user
 */
router.post('/login', function (req, res, next) {
  let loginForm = req.body
  userDao.login(loginForm, function (users) {
    console.log(result)
    res.send(result.createResult('post', true, users))
  })
})

module.exports = router;
