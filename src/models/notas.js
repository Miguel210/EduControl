
//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const notasModel = db.define('notas', {
    id_notas: {type: DataTypes.INTEGER, primaryKey: true},
    id_alumno_materia: {type: DataTypes.INTEGER},
    calificacion: {type: DataTypes.DECIMAL},
    unidad: {type: DataTypes.INTEGER}

}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'notas'
})

export default notasModel
/*
+-------------------+--------------+------+-----+---------+----------------+
| Field             | Type         | Null | Key | Default | Extra          |
+-------------------+--------------+------+-----+---------+----------------+
| id_notas          | int(11)      | NO   | PRI | NULL    | auto_increment |
| id_alumno_materia | int(11)      | NO   | MUL | NULL    |                |
| calificacion      | decimal(2,2) | NO   |     | NULL    |                |
| unidad            | int(11)      | NO   |     | NULL    |                |
+-------------------+--------------+------+-----+---------+----------------+
*/