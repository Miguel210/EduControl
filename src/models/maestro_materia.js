
//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const maestroMateriaModel = db.define('maestro_materia', {
    id_maestro_materia: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_materia: {type: DataTypes.INTEGER},
    id_maestro: {type: DataTypes.INTEGER}
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'maestro_materia'
})

export default maestroMateriaModel

/*
+--------------------+---------+------+-----+---------+----------------+
| Field              | Type    | Null | Key | Default | Extra          |
+--------------------+---------+------+-----+---------+----------------+
| id_maestro_materia | int(11) | NO   | PRI | NULL    | auto_increment |
| id_materia         | int(11) | NO   | MUL | NULL    |                |
| id_maestro         | int(11) | NO   | MUL | NULL    |                |
+--------------------+---------+------+-----+---------+----------------+
3 rows in set (0.01 sec)
*/