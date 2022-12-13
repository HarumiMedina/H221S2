var express = require("express");
var mysql = require("mysql");
var app = express();
var cors = require("cors");

app.use(express.json());
app.use(cors());

var conexion = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "administrador",
    database: "dbConsultas",
});

conexion.connect(function (error) {
    if (error) {
        throw error;
    } else {
        console.log("Conexión exitosa");
    }
});

const puerto = process.env.PUERTO || 3000;

app.listen(puerto, function () {
    console.log("Servidor funcionando en puerto: " + puerto);
});

app.post("/api/consultas", (req, res) => {
    let data = {
        userped: req.body.NOMCON,
        emausped: req.body.EMACON,
        celusped: req.body.CELUPED,
        foodped: req.body.ASUCON,
        msgped: req.body.MSGCON,
    };
    let sql = "INSERT INTO consultas SET ?";
    conexion.query(sql, data, function (error, results) {
        if (error) {
            throw error;
        } else {
            console.log(data);
            res.send(data);
        }
    });
});