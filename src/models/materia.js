
//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const materiaModel = db.define('materia', {
    id_materia: {type: DataTypes.INTEGER, primaryKey: true},
    nombre: {type: DataTypes.STRING},
    status: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'materia'
})

export default materiaModel

/*
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| id_materia | int(11)      | NO   | PRI | NULL    |       |
| nombre     | varchar(100) | NO   |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
*/