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


// quan li nguoi dung

app.post('/api/QuanLyNguoiDung/DangKy', async (req, res) => {
    const final = await new Promise((resolve, reject) => {
        dbConn.query("INSERT INTO nguoidungvm SET ? ", { 
            taiKhoan: req.body.taiKhoan,
            matKhau: md5(req.body.matKhau),
            email: req.body.email,
            soDt: req.body.soDt,
            maNhom: req.body.maNhom,
            maLoaiNguoiDung: req.body.maLoaiNguoiDung,
            hoTen: req.body.hoTen, 
        }, function (error, results, fields) {
            if (error) throw error;
            resolve(res.send("Success"));
        });
    })
    return final;
});

app.post('/api/QuanLyNguoiDung/DangNhap', function (req, res) {
    dbConn.query('SELECT * FROM nguoidungvm WHERE taiKhoan=? AND matKhau=?', [req.body.taiKhoan, md5(req.body.matKhau)], function (error, results, fields) {
        if (error) throw error;
        if (results.length > 0){
            info = JSON.parse(JSON.stringify(results[0]))
            info["accessToken"] = jwt.sign(info, process.env.JWT_SECRET_KEY)
            return res.send(info);
        }
        return res.status(401).send({ error: true });
    });
});

app.get('/api/QuanLyNguoiDung/LayDanhSachNguoiDung', function (req, res) {
    dbConn.query('SELECT * FROM nguoidungvm WHERE maNhom=?', [req.query.MaNhom], function (error, results, fields) {
        if (error) throw error;
        return res.send(results);
    });
});

app.post('/api/QuanLyNguoiDung/ThongTinTaiKhoan', function (req, res) {
    validateToken(req, res);
    dbConn.query('SELECT * FROM nguoidungvm WHERE taiKhoan = ?', [req.body.taiKhoan], function (error, results, fields) {
        if (error) throw error;
        return res.send(results[0]);
    });
});

app.put('/api/QuanLyNguoiDung/CapNhatThongTinNguoiDung', function (req, res) {
    validateToken(req, res);
    dbConn.query('UPDATE nguoidungvm SET ? WHERE taiKhoan = ?', [{
        taiKhoan: req.body.taiKhoan,
        matKhau: md5(req.body.matKhau),
        email: req.body.email,
        soDt: req.body.soDt,
        maNhom: req.body.maNhom,
        maLoaiNguoiDung: req.body.maLoaiNguoiDung,
        hoTen: req.body.hoTen,  
    },req.body.taiKhoan], function (error, results, fields) {
        if (error) throw error;
        return res.send(results[0]);
    });
});

app.delete('/api/QuanLyNguoiDung/XoaNguoiDung', function (req, res) {
    dbConn.query('DELETE FROM nguoidungvm WHERE taiKhoan=?', [req.query.TaiKhoan], function (error, results, fields) {
        if (error) throw error;
        return res.send(results);
    });
});

