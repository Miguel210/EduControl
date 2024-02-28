import jwt from 'jsonwebtoken';
import cookieParser from 'cookie-parser'
import db from "../dbConnection/bd.js";
import personaModel from '../models/persona.js'
import direccionModel from '../models/direccion.js'
import alumnoModel from '../models/alumno.js'
import maestroModel from '../models/maestro.js'



async function datosPrincipal(id,page,tipo_usuario = 1,busqueda='') {

    const [operaciones,usuario,paginas,datausuario] = await Promise.all([
        db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: id, modulo: 'Usuarios'}}),
        db.query('call pr_modulos(:id)',{replacements: {id: id}}),
        db.query('call pr_paginacion()'),
        db.query('call pr_datosUsuarios(:pages,:tipo_usuario,:buscar)', { replacements: { pages: page,tipo_usuario:tipo_usuario,buscar:`%${busqueda}%`} }),
    ]);
    const option = {
        page: page,
        page_mass: Number(page)+ 1,
        page_menoss: page==1 ? 1:Number(page)- 1,
        cantPaginas: paginas,
    }
    return {operaciones,usuario,datausuario,option};
}

  //TODO Usuarios (READ)
/*
Este código define una función asíncrona llamada Usuarios que maneja solicitudes a la ruta '/usuarios'.
La función recupera datos del usuario e información de paginación de la datosPrincipalfunción y
representa la plantilla de 'menú', pasando los datos recuperados a la plantilla.
*/
export const Usuarios = async(req, res) => {
    const {page=1} = req.query;

    const {operaciones,usuario,datausuario,option} = await datosPrincipal(req.currentUser.id, page );
    const seccion = 'Usuarios';

    const datosGrupos = await db.query('call control_escolar.pr_grupos("todos",1);')
    console.table(operaciones)

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,datausuario,option,datosGrupos});
}

  //TODO Usuarios (READ + BUSQUEDA)
/*
Este código define una función asíncrona llamada buscarque maneja las solicitudes a la ruta '/buscar'.
La función busca usuarios según el tipo de usuario y la consulta de búsqueda proporcionada.
*/
export const buscar = async(req, res) => {
    const {page=1} = req.query;
    const  tipo_usuario = req.body.tipoUsuarios;
    const  busqueda = req.body.search;
    const seccion = 'Usuarios';
    const {operaciones,usuario,datausuario,option} = await datosPrincipal(req.currentUser.id, page,tipo_usuario, busqueda);

    const datosGrupos = await db.query('call control_escolar.pr_grupos("todos",1);')

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,datausuario,option,datosGrupos});
}


export const llenarDATAusuario = async(req, res) => {
    console.log('Actualizar datos');

    const id= req.query.id;

    const datosForm = await db.query('call pr_persona(:id)',{replacements: {id:id}});
    res.json(datosForm);
}

export const guardarDatosActualizados = async(req,res) => {
    const {page=1} = req.query;
    const seccion = 'Usuarios';
    const {operaciones,usuario,datausuario,option} = await datosPrincipal(req.currentUser.id, page );


    const idpersona = req.body.id_persona;
    const iddireccion = req.body.id_direccion;
    const idAlumno = req.body.id_alumno;
    const idMaestro = req.body.id_maestro;
    console.table( idMaestro);
    console.table( idAlumno);

    const persona = {
        id_genero: req.body.genero,
        id_perfil: req.body.perfil,
        nombre: req.body.nombre,
        app_mat: req.body.app_mat,
        app_pat: req.body.app_pat,
        fnac: req.body.fnac,
        seguro_social: req.body.seguro_social,
        password: req.body.password,
        telefono: req.body.telefono,
        correo: req.body.correo,
    };
    const direccion ={
        ciudad: req.body.ciudad,
        colonia: req.body.colonia,
        cp: req.body.cp,
        calle1: req.body.calle1,
        calle2: req.body.calle2,
        referencia: req.body.referencia,
    };

    let alumno = {
        id_grupo: req.body.grupos,
        matricula: req.body.matricula,
        promedio: 0,
    }
    
    let maestro = {
        cedula: req.body.cedula,
        anios_exp: req.body.AniosExp,
        especialidad: req.body.especialidad
    }

    console.table(persona)
    console.table(direccion)
    console.table(alumno)
    console.table(maestro)
    const t = await sequelize.transaction();
    try{
        await personaModel.update(persona,{
            where:{id_persona:idpersona}, transaction: t
        });
        personaModel.findAll({where:{íd_persona:idpersona}},{transaction: t});

        await direccionModel.update(direccion,{
            where:{id_direccion:iddireccion}, transaction: t
        });
        if( req.body.cedula!=''){
            await maestroModel.update(maestro,{
                where:{id_maestro:idMaestro}, transaction: t
            });
        }
        if( req.body.matricula!=''){
            await alumnoModel.update(alumno,{
                where:{id_alumno:idAlumno}, transaction: t
            });
        }
        await t.commit();
    }catch(error){
        await t.rollback();
        res.json({error:error.message});
    }

    const datosGrupos = await db.query('call control_escolar.pr_grupos("todos",1);')

    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,datausuario,option,datosGrupos});
}


export const registarUsuario = async(req, res) => {
    const {page=1} = req.query;
    const seccion = 'Usuarios';

    const persona = {
        id_direccion: 1,
        id_genero: req.body.genero,
        id_perfil: req.body.perfil,
        nombre: req.body.nombre,
        app_mat: req.body.app_mat,
        app_pat: req.body.app_pat,
        fnac: req.body.fnac,
        seguro_social: req.body.seguro_social,
        password: req.body.password,
        telefono: req.body.telefono,
        correo: req.body.correo,
    };
    let direccion ={
        ciudad: req.body.ciudad,
        colonia: req.body.colonia,
        cp: req.body.cp,
        calle1: req.body.calle1,
        calle2: req.body.calle2,
        referencia: req.body.referencia,
    };

    let alumno = {
        id_grupo: req.body.grupos,
        id_persona: 1,
        matricula: req.body.matricula,
        promedio: 0,
    }

    let maestro = {
        id_persona: 1,
        cedula: req.body.cedula,
        anios_exp: req.body.AniosExp,
        especialidad: req.body.especialidad
    }

    try{
        const idDIr = await direccionModel.create(direccion);
        persona.id_direccion = idDIr.id_direccion;

        const idPer = await personaModel.create(persona);
        alumno.id_persona = idPer.id_persona;
        maestro.id_persona = idPer.id_persona;

        if( req.body.cedula!=''){
            const idMa = await maestroModel.create(maestro);
            console.table(maestro);
        }
        if( req.body.matricula!=''){
            const idAl = await alumnoModel.create(alumno);
            console.table(alumno);
        }

        console.table(idPer);
    }catch(error){
        res.json({error:error});
    }

    const {operaciones,usuario,datausuario,option} = await datosPrincipal(req.currentUser.id, page );
    const datosGrupos = await db.query('call control_escolar.pr_grupos("todos",1);')
    res.render('menu',{title:`Logueado correctamente ! ${req.currentUser.nombre}`,usuario,seccion,operaciones,datausuario,option,datosGrupos});

}