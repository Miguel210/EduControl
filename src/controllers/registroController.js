import personaModel from '../models/persona.js'
import generoModel from '../models/genero.js'
import direccionModel from '../models/direccion.js'


export const regisitro =  async(req, res) => {

    console.log("pasando por aqui**********************************")

    try {
        res.render('registro')
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const crearDireccion = async(req, res) => {
    //*Recuperar datos del form
    const {ciudad,colonia,cp,calle1,calle2,referencia} = req.body;
    const {id_genero, id_perfil} = req.body;
    //*juntar datos de cada tabla
    const direccion = {ciudad: ciudad,colonia:colonia,cp:cp,calle1:calle1,calle2:calle2,referencia:referencia};
    const persona = {id_genero: id_genero, id_perfil:id_perfil};

    console.log(direccion)
    console.log(persona)

    try {
        const id_creado = await direccionModel.create(direccion);
        console.log(id_creado.get('id_direccion'));
    } catch (error) {
        res.json({message: error.message})
    }
    res.redirect('/registro/persona');
}

export const allGenero =  async(req, res) => {
    try {
        const generos = await generoModel.findAll()
        const direccion = await direccionModel.max('id_direccion');

        res.render('registro2',{title:'Registro', generos, direccion})
    } catch (error) {
        res.json({ message: error.message })
    }
}

export const crearPersona = async (req, res) => {
    try {
        await personaModel.create(req.body)
        //console.log(res.json({message: 'Creado correctamente'}))
    } catch (error) {
        res.json({message: error.message})
    }
    res.redirect('/menu')
}
