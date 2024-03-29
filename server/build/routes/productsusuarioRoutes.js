"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const productsusuarioController_1 = __importDefault(require("../controllers/productsusuarioController"));

class ProductsusuarioRoutes {
    constructor() {
        this.router = (0, express_1.Router)();
        this.config();
    }
    config() {
        this.router.get('/', productsusuarioController_1.default.list);
        this.router.get('/:id', productsusuarioController_1.default.getOne);
        this.router.post('/', productsusuarioController_1.default.create);
        this.router.delete('/:id', productsusuarioController_1.default.delete);
        this.router.put('/:id', productsusuarioController_1.default.update);
    }
}
const productsusuarioRoute = new ProductsusuarioRoutes();
exports.default = productsusuarioRoute.router;
