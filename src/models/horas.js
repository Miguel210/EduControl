import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

//*Definir conexion

const horasModel = db.define('horas', {
    id_hora: {type: DataTypes.INTEGER, primaryKey: true},
    hora: {type: DataTypes.TIME},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'horas'
});


export default horasModel