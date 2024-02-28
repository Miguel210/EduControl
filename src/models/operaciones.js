import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

const operacionesModel = db.define('operaciones',{
    id_operaciones: {type: DataTypes.INTEGER, primaryKey: true},
    description: {type: DataTypes.STRING}
},{
    timestamp: false,
    freezeTableName: true,
    tableName: 'operaciones'
})


export default operacionesModel;