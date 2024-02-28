import db from "../dbConnection/bd.js";
import cicloModel from '../models/ciclo.js'
import carreraModel from '../models/carrera.js'
import carrera_cicloModel from '../models/carrera_ciclo.js'

//TODO SECCION DE Carreras

export const ce_carreras = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = req.query.ops;
    const buscar = 'todos';

    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:buscar}});
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,carreras,valdiarCicloCreacion,buscar});

}

export const ce_carreras_buscar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = 'carreras';
    const buscar = req.body.buscar;

    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:buscar}});

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,carreras,valdiarCicloCreacion,buscar});

}

export const ce_carreras_agregar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = 'carreras';
    const buscar = 'todos';
    const addcarrera = {
        descripcion: req.body.descripcion,
        status: 1,
    }
    console.table(addcarrera);
    try {
        await carreraModel.create(addcarrera);
    } catch (error) {
        res.json({error: error.message});
    }
    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:buscar}});
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,carreras,valdiarCicloCreacion,buscar});

}


export const ce_carreras_agregarCarrera_Ciclo = async(req, res)  => {
    const seccion = 'ciclo-escolar';
    const ops = 'carreras';
    const buscar = 'todos';
    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });
    const datos = [];
    const carrerasSelect = req.body.id_carrera;
    carrerasSelect.forEach(function(element) {
        datos.push({
            id_ciclo: valdiarCicloCreacion[0]['dataValues']['id_ciclo'],
            id_carrera:Number(element),
        })
    });
    console.log(datos);
    await cicloModel.update({statusCarreras: 1},{
        where:{
            id_ciclo: valdiarCicloCreacion[0]['dataValues']['id_ciclo']
        }
    });
    try {
        await carrera_cicloModel.bulkCreate(datos);
    } catch (error) {
        console.log(error)
        res.json({error: error.message});
    }

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});
    const carreras = await db.query('call pr_carreras(:buscar);',{replacements: {buscar:buscar}});
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,carreras,valdiarCicloCreacion,buscar});
}



export const llenarDATAcarrera = async(req, res) => {
    console.log('Actualizar datos');
    const id= req.query.id;
    const datosForm = await db.query('call pr_carrera(:id)',{replacements: {id:id}});

    res.json(datosForm);
}


export const ce_actualizarDatosCarrera = async(req,res) => {
    const seccion = 'ciclo-escolar';
    const ops = 'carreras';


    const addcarrera = {
        descripcion: req.body.descripcionU,
    }
    try {
        await carreraModel.update(addcarrera,{
            where:{id_carrera: req.body.id_carreraU}
        });
    } catch (error) {
        res.json({error: error.message});
    }
    const valdiarCicloCreacion = await cicloModel.findAll({
        order: [['id_ciclo', 'DESC']],
        limit: 1
    });

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const carreras = await db.query('call pr_carreas("todos");');

    //console.table(carreras)

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,carreras,valdiarCicloCreacion,buscar:"todos"});

}
