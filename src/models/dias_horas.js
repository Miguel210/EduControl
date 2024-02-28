import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

//*Definir conexion

const dias_horasModel = db.define('dias_horas', {
    id_diasHoras: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_dia: {type: DataTypes.INTEGER},
    id_hora: {type: DataTypes.INTEGER},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'dias_horas'
});


export default dias_horasModel
