//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const aulaModel = db.define('aula', {
    id_aula: {type: DataTypes.INTEGER, primaryKey: true},
    id_grupo_alumno: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'aula'
})

export default aulaModel