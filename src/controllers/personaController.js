// Importacion de Modelo persona

import vwoperacionesModel from '../models/viewsModels/operaciones.view.js'
import  config  from '../middlewares/config.js'
import jwt from 'jsonwebtoken';


//Consulta por correo y contraseña
export const operaciones = async(id) => {

    const persona = await vwoperacionesModel.findAll({
        where: {id_persona: id}
    });
    const data = persona.map((item)=>{
        return{
            Operaciones:  item.descripcion,
            autorizacion: item.autorizacion,
        }
    })
    return data;
}

