//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const grupoModel = db.define('grupo',{
    id_grupo: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_grado: {type: DataTypes.INTEGER},
    nombre: {type: DataTypes.STRING}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'grupo'
})


export default grupoModel