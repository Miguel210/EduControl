//*Improtamos la conexion de la DB
import db from "../dbConnection/bd.js";
//*importamos sequelize
import { DataTypes } from "sequelize";

//*Definir conexion
const personaModel = db.define("persona",{
    id_persona: {type: DataTypes.INTEGER, primaryKey: true, autoIncrement: true},
    id_direccion: {type: DataTypes.INTEGER},
    id_genero: {type: DataTypes.INTEGER},
    id_perfil: {type: DataTypes.INTEGER},
    nombre: {type: DataTypes.STRING},
    app_mat: {type: DataTypes.STRING},
    app_pat: {type: DataTypes.STRING},
    fnac: {type: DataTypes.DATE},
    seguro_social: {type: DataTypes.STRING},
    fecha_registro: {type: DataTypes.DATE},
    password: {type: DataTypes.STRING},
    telefono: {type: DataTypes.STRING},
    correo: {type: DataTypes.STRING},
    token: {type: DataTypes.STRING},
    //!Columnas de la tabla
}, {
    timestamps: false,
    freezeTableName: true,
    tableName: "persona"
});


export default personaModel