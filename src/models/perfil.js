import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

const perfilModel = db.define('perfil',{
    id_perfil: {type: DataTypes.INTEGER, primaryKey: true},
    description: {type: DataTypes.STRING}
},{
    timestamp: false,
    freezeTableName: true,
    tableName: 'perfil'
})


export default perfilModel;