//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const alumnoMateriaModel = db.define('alumo_materia',{
    id_alumo_materia: {type: DataTypes.INTEGER, primaryKey: true,autoIncrement: true},
    id_alumno: {type: DataTypes.INTEGER},
    id_materia: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'alumo_materia'
})


export default alumnoMateriaModel