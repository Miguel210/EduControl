//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const carreraModel = db.define('carrera', {
    id_carrera: {type: DataTypes.INTEGER, primaryKey: true},
    id_ciclo: {type: DataTypes.INTEGER},
    descripcion: {type: DataTypes.STRING},
    status: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'carrera'
})

export default carreraModel