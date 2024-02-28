//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

const maestroModel = db.define('maestro',{
    id_maestro: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_persona: {type: DataTypes.INTEGER},
    cedula: {type: DataTypes.STRING},
    anios_exp: {type: DataTypes.INTEGER},
    especialidad: {type: DataTypes.STRING},

}, {
    timestamps: false,
    freezeTableName: true,
    tableName: 'maestro'
})


export default maestroModel


/*
mysql> describe maestro;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id_maestro   | int(11)     | NO   | PRI | NULL    |       |
| id_persona   | int(11)     | NO   | MUL | NULL    |       |
| cedula       | varchar(45) | NO   |     | NULL    |       |
| anios_exp    | int(11)     | NO   |     | NULL    |       |
| especialidad | varchar(50) | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)
 */