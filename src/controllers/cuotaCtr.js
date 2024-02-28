import db from "../dbConnection/bd.js";
import colegiaturasModel from '../models/colegiaturas.js'
import colegiatura_alumnosModel from '../models/colegiatura_alumnos.js'

//TODO Seccion de Colegiaturas
export const ce_colegiaturas = async(req, res) => {

    const seccion = 'ciclo-escolar';
    const ops  = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const colegiaturasData = await db.query('call pr_colegiaturas("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,colegiaturasData});
}

export const traerDatoscolegiaturas = async(req, res) => {
    const id= req.query.id;

    const colegiaturasData = await db.query('call pr_colegiaturas(:buscar,:id);',{replacements: {buscar: "buscar",id: id}});

    res.json(colegiaturasData);
}

export const ce_actualizarDatosColegiaturas = async(req, res) => {

    const seccion = 'ciclo-escolar';
    const ops  = "colegiaturas";
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const colegiaturasDatas = {
        nombre: req.body.nombre,
        descripcion: req.body.descripcion,
        fecha_limite: req.body.fecha_limite,
        monto: req.body.monto,
        status: req.body.status
    };

    try {
        await colegiaturasModel.update(colegiaturasDatas,{
            where:{id_colegiatura: req.body.id_colegiatura}
        });
    } catch (error) {
        res.json({error: error.message});
    }

    const colegiaturasData = await db.query('call pr_colegiaturas("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,colegiaturasData});

}

export const ce_colegiaturas_enviar = async(req, res) => {
}

export const ce_colegiaturas_registrar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "colegiaturas";

    const colegiaturasAlta = {
        nombre: req.body.nombre,
        descripcion: req.body.descripcion,
        fecha_limite: req.body.fecha_limite,
        monto: req.body.monto,
        status: req.body.status
    };


    console.table(colegiaturasAlta);
    try {
        await colegiaturasModel.create(colegiaturasAlta);
    } catch (error) {
        res.json({error: error.message});
    }


    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const colegiaturasData = await db.query('call pr_colegiaturas("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,colegiaturasData});
}

export const cr_colegiatura_enviar = async(req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "colegiaturas";

    const alumnos = await db.query("call pr_alumnos();");
    console.log(alumnos)
    const datos = [];

    const colegiaturaSelect = req.body.id_colegiatura;
    alumnos.forEach(function(element) {
        datos.push({
            id_colegiatura: Number(req.query.datos),
            id_alumno: element.id_alumno,
            status: 0
        })
    });


    try {
        await colegiatura_alumnosModel.bulkCreate(datos);
    } catch (error) {
        console.log(error)
        res.json({error: error.message});
    }


    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const colegiaturasData = await db.query('call pr_colegiaturas("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,colegiaturasData});
}


export const ce_colegiaturas_borrar = async (req, res) => {
    const seccion = 'ciclo-escolar';
    const ops = "colegiaturas";

    const colegiatura = {
        status: 0
    }
    try {
        await colegiaturasModel.update(colegiatura, {
            where:{id_colegiatura: req.query.dato}
        });
    } catch (error) {
        res.json({error: error.message});
    }
    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const colegiaturasData = await db.query('call pr_colegiaturas("todos",0);');

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,ops,colegiaturasData});
}
