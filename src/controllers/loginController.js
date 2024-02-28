// Importacion de Modelo persona

import personaModel from '../models/persona.js'
import  config  from '../middlewares/config.js'
import jwt from 'jsonwebtoken';

export const inicio =  (req, res) => {
    res.render('login',{title:'Login'})
}

//Consulta por correo y contraseña
export const signin  = async(req, res) => {
    const {correo, password} = req.body;

    if(!correo || !password) {
        res.render('login',{
            title: 'Login',
            error: 'El correo y contraseña son OBLIGATORIOS'
        });
        return;
    }
    const persona = await personaModel.findAll({
        where: {correo: correo, password: password}
    });
    if(persona.length == 0){
        res.render('login', {
            title: 'Login',
            error: 'El correo o la contraseña son incorrectas'
        })
        return;
    }
    const user  = {id: persona[0]['dataValues']['id_persona'], nombre: persona[0]['dataValues']['nombre'],app_mat: persona[0]['dataValues']['app_mat']};
    //!tokens
    const tokens = jwt.sign(user,config.SECRET,{
        expiresIn: '60m' //todo Cuanto tarda en expirar el tocken
    })
    try {
        await personaModel.update({token: tokens},{
            where:{id_persona:persona[0]['dataValues']['id_persona']}
        })
        res.cookie('token',tokens,{maxAge: 600000*60,httpOnly: true,})
        //console.log("Actualizado correcto");
    } catch (error) {
        console.log(error.message);
    }
    res.status(301).redirect("/menu");
    //res.status(200).send({token:tokens})
}