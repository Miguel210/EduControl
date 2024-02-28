import db from "../dbConnection/bd.js";
import personaModel from '../models/persona.js'
import cicloModel from '../models/ciclo.js'
import carreraModel from '../models/carrera.js'
import carrera_cicloModel from '../models/carrera_ciclo.js'
import gradoModel from '../models/grado.js'
import grupoModel from '../models/grupo.js'
import colegiaturasModel from '../models/colegiaturas.js'
import materiasModel from '../models/materia.js'
import colegiatura_alumnosModel from '../models/colegiatura_alumnos.js'
import maestroMateriaModel from '../models/maestro_materia.js'
import dias_horasModel from '../models/dias_horas.js'
import diasModel from '../models/dias.js'
import horasModel from '../models/horas.js'
import maestrosmateriashorasModel from '../models/maestrosmateriashoras.js'
import alumnoMateriaModel from '../models/alumno_materia.js'
//TODO Seccion de Grupos y grados

export const ce_grupos = async(req, res) => {

    const seccion = 'ciclo-escolar';
    const ops  = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupoData = await db.query('call pr_grupos(:buscar,:id);',{replacements: {buscar:"todos",id:1}});


    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:"actual"}});
    const cicloExistente = await db.query('call pr_cicloExistente()');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,grupoData,carreras,cicloExistente});
}


export const ce_grupos_agregar = async (req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "grupos";

    const grado = {
        id_carrera_ciclo: req.body.carrera,
        descripcion: req.body.grado
    }
    const grupo = {
        id_grado: 1,
        nombre: req.body.grupo
    }
    try{
        console.table(grado)
        const idG = await gradoModel.create(grado);
        grupo.id_grado = idG.id_grado;
        grupoModel.create(grupo);

    }catch(error){
        res.json({error:error});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupoData = await db.query('call pr_grupos(:buscar,:id);',{replacements: {buscar:"todos",id:1}});
    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:"actual"}});
    const cicloExistente = await db.query('call pr_cicloExistente()');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,grupoData,carreras,cicloExistente});
}

export const ce_grupos_actualizar = async (req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  = "grupos";
    console.log(req.body);

    const grado = {
        id_carrera_ciclo: req.body.carrera,
        descripcion: req.body.grado
    }

    const grupo = {
        nombre: req.body.grupo
    }
    try{
        await gradoModel.update(grado,{
            where:{id_grado: req.body.idgrado}
        });

        await grupoModel.update(grupo,{
            where:{id_grupo: req.body.idgrupo}
        });

    }catch(error){
        res.json({error: error.message});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupoData = await db.query('call pr_grupos(:buscar,:id);',{replacements: {buscar:"todos",id:1}});
    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:"actual"}});
    const cicloExistente = await db.query('call pr_cicloExistente()');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,grupoData,carreras,cicloExistente});
}

export const ce_grupos_traerDatos = async (req, res) => {
    const id= req.query.id;
    const grupoData = await db.query('call pr_grupos(:buscar,:id);',{replacements: {buscar:"act",id:id}});

    res.json(grupoData);
}
