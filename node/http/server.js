var http = require('http');
const { Sequelize } = require('sequelize');

// Option 1: Passing a connection URI
// const sequelize = new Sequelize('sqlite::memory:') // Example for sqlite
// const sequelize = new Sequelize('postgres://user:pass@example.com:5432/dbname') // Example for postgres


// Option 3: Passing parameters separately (other dialects)
const sequelize = new Sequelize('test_db', 'root', 'root', {
  host: '114.132.184.216',
  dialect: 'mysql'
});

async function test (){
    try {
        const [results, metadata] = await sequelize.query("select user_id from sys_user order by user_id desc limit 1");
        return results;
        // Results will be an empty array and metadata will contain the number of affected rows.
      } catch (error) {
        console.error('Unable to connect to the database:', error);
      }
}

http.createServer(function (req, res) {
    test().then(e=>{
        res.write(JSON.stringify(e)); //write a response to the client
        res.end(); 
    })
   
}).listen(8080, "127.0.0.1");