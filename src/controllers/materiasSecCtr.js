import db from "../dbConnection/bd.js";
import materiasModel from '../models/materia.js'
import alumnoMateriaModel from '../models/alumno_materia.js'
//TODOS Seccion de Materias

export const ce_materias = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupo = await db.query('call pr_grupos("todos", 1);');
    const materias = await db.query('call pr_materias("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,materias,grupo});
}

export const ce_materia_grupo_registrar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops  = "materias";

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupo = await db.query('call pr_grupos("todos", 1);');
    const materias = await db.query('call pr_materias("todos",0);');


    try {
        const selectMaterias = req.body.id_materia;
        const grupoSelect = req.body.grupos;
        const alumnosGrupo = await db.query('call pr_grupo_alumnos(:id);',{replacements: {id: grupoSelect}})
        const datos = [];
        selectMaterias.forEach(function(element) {
            let count = Number(0);
            while (count <= alumnosGrupo.length) {
                if (alumnosGrupo[count]) {
                    datos.push({
                        id_alumno: alumnosGrupo[count]['id_alumno'],
                        id_materia: element
                    });
                }
                count++;
            }
        });
        console.log(req.body)
        await alumnoMateriaModel.bulkCreate(datos);
    } catch (error) {
        res.json({error: error.message});
    }
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,materias,grupo});
}
export const ce_materia_registrar = async(req,res) => {
    const seccion = 'ciclo-escolar';
    const ops  = "materias";

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const grupo = await db.query('call pr_grupos("todos", 1);');
    const materiasAlta = {
        nombre: req.body.nombre,
        status: 1,
    };
    try {
        await materiasModel.create(materiasAlta);
    } catch (error) {
        res.json({error: error.message});
    }
    const materias = await db.query('call pr_materias("todos",0);');
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,materias,grupo});
}

export const ce_actualizarDatosmaterias = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "materias";

    const materiasUpd = {
        nombre: req.body.nombre
    }

    try {
        await materiasModel.update(materiasUpd,{
            where:{id_materia: req.body.id_materia}
        });
    } catch (error) {
        res.json({error: error.message});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const materias = await db.query('call pr_materias("todos",0);');
    const grupo = await db.query('call pr_grupos("todos", 1);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,materias,grupo});
}


export const traerDatosMaterias = async(req, res) => {
    const id= req.query.id;

    const colegiaturasData = await db.query('call pr_materias(:buscar,:id);',{replacements: {buscar: "buscar",id: id}});

    res.json(colegiaturasData);
}

export const ce_materias_borrar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "materias";

    console.log(req.query)
    const materia = {
        status: 0
    }
    try {
        await materiasModel.update(materia,{
            where: {id_materia: Number(req.query.dato)}
        });
    } catch (error) {
        res.json({error: error.message});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const materias = await db.query('call pr_materias("todos",0);');
    const grupo = await db.query('call pr_grupos("todos", 1);');

    res.render('menu',{usuario,seccion,operaciones,ops,materias,grupo});
}

