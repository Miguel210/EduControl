import { Sequelize } from "sequelize";

const db = new Sequelize('control_escolar','root','Colocar Contraseña',{
    host: 'localhost',
    dialect: 'mysql'
});

export default db;