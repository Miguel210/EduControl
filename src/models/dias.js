import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

//*Definir conexion

const diasModel = db.define('dias', {
    id_dia: {type: DataTypes.INTEGER, primaryKey: true},
    nombre: {type: DataTypes.STRING},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'dias'
});


export default diasModel