var express = require('express');
var app = express();
var bodyParser = require('body-parser');
var md5 = require('md5');
var mysql = require('mysql');
const cors = require('cors');
const dotenv = require('dotenv');
const jwt = require('jsonwebtoken');
const { application } = require('express');

app.use(cors())
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));

// Set up Global configuration access
dotenv.config();

// route mặc định
app.get('/', function (req, res) {
    return res.send({ error: true, message: 'hello' })
});
// chỉnh port
app.listen(process.env.PORT || 4000, function () {
    console.log('Node app is running on port 4000');
});
module.exports = app;
var dbConn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'nodeJsApi'
});
dbConn.connect();

const validateToken = (req, res) => {
    const tokenHeaderKey = process.env.TOKEN_HEADER_KEY;
    const jwtSecretKey = process.env.JWT_SECRET_KEY;
    try {
        const token = req.headers.authorization.split(" ")[1];
        const verified = jwt.verify(token, jwtSecretKey);
        if(!verified)
            return res.status(401).send(error);
    } catch (error) {
        console.log(error);
        return res.status(401).send(error);
    }
}
// quản lí rạp
