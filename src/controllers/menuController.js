import jwt from 'jsonwebtoken';
import cookieParser from 'cookie-parser'
import {operaciones} from './personaController.js'
import db from "../dbConnection/bd.js";


export const menu = async(req, res) => {
    const {seccion='Noticias'} = req.query;
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion})
}
