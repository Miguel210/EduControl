//*Improtamos la conexion de la DB
import db from "../../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";


const vwoperacionesModel = db.define('vw_operaciones',{
    id_persona: {type: DataTypes.INTEGER, primaryKey: true},
    descripcion: {type: DataTypes.STRING},
    autorizacion: {type: DataTypes.INTEGER}
},{
    timestamps: false,
    freezeTableName: true,
    tableName: 'vw_operaciones'
})

export default vwoperacionesModel