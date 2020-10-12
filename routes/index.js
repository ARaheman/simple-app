var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'simple-app' });
  console.log('Hello ' + process.env.NAME)
});

module.exports = router;
