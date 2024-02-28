//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

//*Definir conexion

const colegiaturasModel = db.define('colegiatura', {
    id_colegiatura: {type: DataTypes.INTEGER, primaryKey: true},
    nombre: {type: DataTypes.STRING},
    descripcion: {type: DataTypes.STRING},
    fecha_limite: {type: DataTypes.DATE},
    monto: {type: DataTypes.DOUBLE},
    status: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'colegiatura'
});


export default colegiaturasModel