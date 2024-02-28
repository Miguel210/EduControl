//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";


const generoModel = db.define('genero', {
    id_genero: {type: DataTypes.INTEGER, primaryKey: true},
    nombre: {type: DataTypes.STRING}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'genero'
});

export default generoModel
