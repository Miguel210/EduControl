import express from 'express';
import cors from 'cors';
import db from './dbConnection/bd.js';
import routes from './routes/routes.js';
import path from 'path';
import bodyParser from 'body-parser';
//*Importacion para __dirname (path)
import { fileURLToPath } from 'url';
import cookieParser from 'cookie-parser';

//*Variables
const app = express();
    //!Usar __dirname
const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);
console.log(__dirname);

//*Usar archivos (html)
app.set('view engine', 'pug');
app.set('views', path.join(__dirname, 'views'));

//*bodyParser

//*Pagina
app.use( cors() )
//app.use( express.json() )
app.use(cookieParser() )
//app.use(express.urlencoded({ extended: true }));
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())
app.use('/',routes );



//!COLOCAR INICIO DE SESION (RETORNO LOGUEADO)

//*STATIC FILES
app.use(express.static(path.join(__dirname, '../public')));
//*Llamado a pagina no encontrada (error 404)
app.use((req,res) =>{
    res.sendFile(path.join(__dirname, '../public/404.html'));
})

//*Conexion a base de datos
try{
    await db.authenticate()
    console.log('Conexion establecida')
}catch(error){
    console.log('Error al conectar: {$error}')
}

//Conexion a servidor
app.listen(8000, () =>{
    console.log("Corriendo servidor en http://localhost:8000/")
})
