//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const alumnoModel = db.define('alumno',{
    id_alumno: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_persona: {type: DataTypes.INTEGER},
    id_grupo: {type: DataTypes.INTEGER},
    matricula: {type: DataTypes.STRING},
    promedio: {type: DataTypes.DECIMAL}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'alumno'
})


export default alumnoModel