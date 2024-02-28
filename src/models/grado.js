//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const gradoModel = db.define('grado',{
    id_grado: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_carrera_ciclo: {type: DataTypes.INTEGER},
    descripcion: {type: DataTypes.STRING}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'grado'
})


export default gradoModel