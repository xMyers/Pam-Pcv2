"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const database_1 = __importDefault(require("../routes/database"));

class UsuariosController {
    list(req, res) {
        database_1.default.query('SELECT * FROM usuarios', function (error, results, fields) {
            res.json(results);
        });
    }
    getOne(req, res) {
        database_1.default.query('SELECT * FROM usuarios WHERE correo=? and pass=?', req.params.id, function (error, results, fields) {
            res.json(results);
        });
    }
    create(req, res) {
        database_1.default.query('INSERT INTO usuarios set ?', [req.body], function (error, results, fields) {
            res.json(results);
            console.log(req.body)
        });
    }
    delete(req, res) {
        database_1.default.query('DELETE FROM usuarios WHERE ID=?', [req.params.id], function (error, results, fields) {
            res.json(results);
        });
    }
    update(req, res) {
        database_1.default.query('UPDATE usuarios SET ? WHERE ID=?', [req.body, req.params.id], function (error, results, fields) {
            res.json(results);
        });
    }
}
const usuariosController = new UsuariosController();
exports.default = usuariosController;