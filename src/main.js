/** Start the application.  */
const express = require('express')
const app = express()
const port = 4000
const host = '0.0.0.0'

var pgp = require('pg-promise')(/* options */)
try {
  var db = pgp(process.env.DATABASE)
} catch (err) {
  console.log("Couldn't connect to database", err);
}

app.use(require('morgan')('dev'));

app.get('/', (req, res) => {
  res.send('Hello dear!')
})

app.get('/env', (req, res) => {
  res.type('application/json');
  res.send(process.env);
})

app.get('/db', (req, res) => {
  db.one('SELECT $1 AS value', 'Hello World')
    .then(function (data) {
      console.log('DATA:', data.value)
    })
    .catch(function (error) {
      console.log('ERROR:', error)
    })
});

app.listen(port, host, () => {
  console.log(`Example app listening at http://${host}:${port}`)
})
