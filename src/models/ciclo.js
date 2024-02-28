//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

//*Definir conexion

const cicloModel = db.define('ciclo', {
    id_ciclo: {type: DataTypes.INTEGER, primaryKey: true},
    inicio: {type: DataTypes.DATE},
    final: {type: DataTypes.DATE},
    status: {type: DataTypes.INTEGER},
    statusCarreras: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'ciclo'
});


export default cicloModel