import db from "../dbConnection/bd.js";
import { DataTypes } from "sequelize";

//*Definir conexion

const maestrosmateriashorasModel = db.define('maestrosmateriashoras', {
    id_maestrosMateriasHoras: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_maestro_materia: {type: DataTypes.INTEGER},
    id_dias_Horas: {type: DataTypes.INTEGER},
    id_grupo: {type: DataTypes.INTEGER},
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'maestrosmateriashoras'
});


export default maestrosmateriashorasModel