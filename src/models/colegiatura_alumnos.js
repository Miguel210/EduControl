import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

//*Definir conexion

const colegiatura_alumnosModel = db.define('colegiatura_alumnos', {
    id_colegiatura_alumnos: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_alumno: {type: DataTypes.INTEGER},
    id_colegiatura: {type: DataTypes.INTEGER},
    status: {type: DataTypes.INTEGER},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'colegiatura_alumnos'
});


export default colegiatura_alumnosModel