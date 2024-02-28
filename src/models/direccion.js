//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const direccionModelo = db.define('direccion', {
    id_direccion: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    ciudad: {type: DataTypes.STRING},
    colonia: {type: DataTypes.STRING},
    cp: {type: DataTypes.STRING},
    calle1: {type: DataTypes.STRING},
    calle2: {type: DataTypes.STRING},
    referencia: {type: DataTypes.TEXT},

}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'direccion'
});

export default direccionModelo