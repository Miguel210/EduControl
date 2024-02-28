import db from "../dbConnection/bd.js";
import notasModel from "../models/notas.js";
import PDF from 'pdfkit-construct';
import fs from 'fs'

export const materias = async(req,res,next) => {
    const seccion = 'materias';
    const ops  ="materias";
    let id_maestro = '';
    let alumnos=[];

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    if(persona[0]['id_grupo']==null){
        id_maestro = persona[0]['id_maestro']
    }else{
        id_maestro = persona[0]['id_grupo'];
    }
    const grupo_maestro = await db.query("call pr_grupo_maestro(:id)",{replacements:{id:id_maestro}})

    const maestro_materia_grupo = await db.query("call pr_maestro_materia_grupo(23,:idm);",{replacements:{idm:id_maestro}});
    res.render('menu',{usuario,seccion,operaciones,ops,grupo_maestro,alumnos});
}

export const materiasCargar = async (req, res) => {
    const {idg} = req.query;
    let id_maestro = '';
    let alumnos=[];


    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    if(persona[0]['id_grupo']==null){
        id_maestro = persona[0]['id_maestro']
    }else{
        id_maestro = persona[0]['id_grupo'];
    }
    const maestro_materia_grupo = await db.query("call pr_maestro_materia_grupo(:idg,:idm);",{replacements:{idg:idg,idm:id_maestro}});

    res.json(maestro_materia_grupo);
}

export const alumnosMateriaCal = async(req, res) => {

    const seccion = 'materias';
    const ops  ="materias";
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    
    
    const {idg,idmat} = req.query;
    console.log(req.query);
    let id_maestro = '';
    
    //* Obtener el id del maestro
    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    if(persona[0]['id_grupo']==null){
        id_maestro = persona[0]['id_maestro']
    }else{
        id_maestro = persona[0]['id_grupo'];
    }
    const alumnosNScalificaciones = await db.query("call pr_alumnoSNcalificacion(:idg,:idm,:idmat);",{replacements:{idg:idg,idm:id_maestro,idmat:idmat}})

    const grupo_maestro = await db.query("call pr_grupo_maestro(:id)",{replacements:{id:id_maestro}})
    const alumnos = await db.query("call pr_alumnosNotas(:idg,:idm,:idmat)",{replacements:{idg:idg,idm:id_maestro,idmat:idmat}});
   
    const datos = [alumnos,alumnosNScalificaciones]
    console.log(datos);

    res.json(datos)
}


export const agregarCalificacion = async(req, res) => {
    const seccion = 'materias';
    console.log(req.body)
    const ops  ="materias";
    let id_maestro = '';
    let alumnos=[];
    const {Alumno,unidad,calificacion} = req.body;

    const notas = {
        id_alumno_materia: Alumno,
        calificacion: calificacion,
        unidad: unidad,
    };

    try {
        await notasModel.create(notas)
    } catch (error) {
        res.json({error: error.message});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    if(persona[0]['id_grupo']==null){
        id_maestro = persona[0]['id_maestro']
    }else{
        id_maestro = persona[0]['id_grupo'];
    }
    const grupo_maestro = await db.query("call pr_grupo_maestro(:id)",{replacements:{id:id_maestro}})

    res.render('menu',{usuario,seccion,operaciones,ops,grupo_maestro,alumnos});

}
