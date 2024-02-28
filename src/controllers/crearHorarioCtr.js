import db from "../dbConnection/bd.js";
import maestroMateriaModel from '../models/maestro_materia.js'
import maestrosmateriashorasModel from '../models/maestrosmateriashoras.js'


//TODO Seccion de Horario

export const ce_horario = async (req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const grupo = await db.query('call pr_grupos("todos", 1);');
    let maestrosmateriashoras='';
    if(grupo==''){
        console.log('vacio')
    }else{
        maestrosmateriashoras = await db.query('call pr_maestrosmateriashoras("act",:id);',{replacements:{id:grupo[0]['id_grupo'],}})
    }

    const maestros = await db.query('call pr_maestros();');
    const materias = await db.query('call pr_alumno_materia(:id);',{replacements:{id:grupo[0]['id_grupo']}});
    const diasHoras = await db.query('call pr_dias_horas();');
    res.render('menu',{usuario,seccion,operaciones,ops,grupo,maestros,materias,diasHoras,maestrosmateriashoras});

}

export const    cr_horario_crear = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  = "horario";

    const maestro_materia = {
        id_maestro: req.body.maestros,
        id_materia: req.body.materias
    }
    console.log(maestro_materia)

    const maestrosmateriashorasT = {
        id_maestro_materia: 1,
        id_dias_Horas: Number(req.body.diasHoras),
        id_grupo: Number(req.body.grupos)
    }

    try{
        const idmm = await maestroMateriaModel.create(maestro_materia);
        maestrosmateriashorasT.id_maestro_materia = idmm.id_maestro_materia;
        console.table(maestrosmateriashorasT['dataValues'])

        const datos = await maestrosmateriashorasModel.create(maestrosmateriashorasT);
        console.table(datos['dataValues'])
    }catch(error){
        res.json({error: error.message});
    }
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const grupo = await db.query('call pr_grupos("todos", 1);');
    const maestros = await db.query('call pr_maestros();');
    const materias = await db.query('call pr_alumno_materia(:id);',{replacements:{id:req.body.grupos}});
    const diasHoras = await db.query('call pr_dias_horas();');
    const maestrosmateriashoras = await db.query('call pr_maestrosmateriashoras("act",:id);',{replacements:{id:req.body.grupos}});

    res.render('menu',{usuario,seccion,operaciones,ops,grupo,maestros,materias,diasHoras,maestrosmateriashoras});
}

export const cr_horario_cargarDatos = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  ="horario";

    console.log(req.body)

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
  
    const grupo = await db.query('call pr_grupos("todos", 1);');
    const maestros = await db.query('call pr_maestros();');
    const materias = await db.query('call pr_alumno_materia(:id);',{replacements:{id:req.body.grupos}});
    const diasHoras = await db.query('call pr_dias_horas();');
    const maestrosmateriashoras = await db.query('call pr_maestrosmateriashoras("act",:id);',{replacements:{id:req.body.grupos}})
    res.render('menu',{usuario,seccion,operaciones,ops,grupo,maestros,materias,diasHoras,maestrosmateriashoras});

}

export const cr_horario_cargarMateriasCarreraDatos = async(req, res) => {
    const id_grupo = req.query
    console.table(id_grupo);
    console.table(id_grupo.id);
    const materias = await db.query('call pr_alumno_materia(:id);',{replacements:{id:id_grupo.id}});
    console.table(materias);

    res.json(materias)
}