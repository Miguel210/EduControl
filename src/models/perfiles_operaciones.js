import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

const perfiles_operacionesModel = db.define('perfiles_operaciones',{
    id_perfiles_operaciones: {type: DataTypes.INTEGER, primaryKey: true},
    id_perfil: {type: DataTypes.INTEGER},
    id_operacion: {type: DataTypes.INTEGER},
    autorizacion: {type: DataTypes.STRING}
},{
    timestamp: false,
    freezeTableName: true,
    tableName: 'perfil'
})


export default perfiles_operacionesModel;