var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'password',
  port: 3306,
  database : 'testing_cypress'
});
 
connection.connect();
 
connection.query('SELECT * from customer', function (error, results) {
  if (error) throw error;
  console.log('The solution is: ', results);
});
 
connection.end();