import db from "../dbConnection/bd.js";
import cicloModel from '../models/ciclo.js'
/*
TODO CICLO ESCOLAR

CRUD

*Ciclo
? 1.Ciclo
? 2.Carreras
? 3.Grupos
? 4.Horarios
? 5.Colegiaturas
? 6.Aulas
*/
export const Control_Escolar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    /*const cicloData = await db.query('call pr_ciclos()');
    const cicloPermisoCrear = await db.query('call pr_ciclos()');*/
    console.table(operaciones)

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops});
}

//TODO SECCION DE CLICO
/*
*Cargar pagina y crear ciclo
!Falta mejorar el boton de automatico en ciclo
!cuando llegue el fin de ciclo abilite el boton de nuevo ciclo
!Terminar ce_ciclo_agregar
*/
export const ce_cargarCiclo = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = req.query.ops;
    console.log(ops)

    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    console.log(valdiarCicloCreacion)

    console.table(valdiarCicloCreacion[0]['dataValues']['status']);

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const cicloData = await db.query('call pr_ciclos()');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,cicloData,valdiarCicloCreacion});
}

export const ce_ciclo_agregar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "ciclo";
    const cicloDatos = {
        inicio: req.body.Inicio,
        final: req.body.Final,
    }
    console.table(cicloDatos)
    try{
        await db.query('call pr_crear_ciclo(:init,:fn);', {replacements: {init: cicloDatos.inicio,fn: cicloDatos.final,}});
    }catch(error){
        res.json({message: error.message});
    }
    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const cicloData = await db.query('call pr_ciclos()');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,cicloData,valdiarCicloCreacion});

}

//TODO Seccion de Aulas
export const ce_aulas = async(req, res) => {

    const seccion = 'ciclo-escolar';
    const ops  = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops});
}