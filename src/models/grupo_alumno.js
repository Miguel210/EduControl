//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const grupoAlumnoModel = db.define('grupo_alumno',{
    id_grupo_alumno: {type: DataTypes.INTEGER, primaryKey: true},
    id_alumno: {type: DataTypes.INTEGER},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'grupo_alumno'
})


export default grupoAlumnoModel