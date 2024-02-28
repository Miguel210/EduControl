//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

//*Definir conexion

const carrera_cicloModel = db.define('carrera_ciclo', {
    id_carrera_ciclo: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_ciclo: {type: DataTypes.INTEGER},
    id_carrera: {type: DataTypes.INTEGER},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'carrera_ciclo'
});


export default carrera_cicloModel