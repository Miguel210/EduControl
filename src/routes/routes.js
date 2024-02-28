import express from 'express';
import { inicio, signin  } from '../controllers/loginController.js';
import {menu} from '../controllers/menuController.js'
import {crearDireccion, regisitro,allGenero,crearPersona} from '../controllers/registroController.js'
import {Usuarios,buscar,llenarDATAusuario,guardarDatosActualizados,registarUsuario} from '../controllers/usuariosController.js'
import {Control_Escolar,ce_cargarCiclo,ce_ciclo_agregar,ce_aulas} from '../controllers/cicloEscolarCtr.js'
import {colegiaturasV,c_getFactura} from '../controllers/colegiaturasCtr.js'
import {hoarioV} from '../controllers/horarioCrt.js'
import {calificaionesV,boletaPDF} from '../controllers/calificacionesCtr.js'
import {materias,materiasCargar,alumnosMateriaCal,agregarCalificacion} from '../controllers/materiaCtr.js'
import { ce_carreras,ce_carreras_buscar,ce_carreras_agregar,ce_carreras_agregarCarrera_Ciclo,llenarDATAcarrera,ce_actualizarDatosCarrera} from '../controllers/carreraCtr.js'
import { ce_grupos,ce_grupos_agregar,ce_grupos_actualizar,ce_grupos_traerDatos} from '../controllers/gradoGrupoCtr.js'
import {ce_colegiaturas,traerDatoscolegiaturas,ce_actualizarDatosColegiaturas,ce_colegiaturas_enviar,ce_colegiaturas_registrar,cr_colegiatura_enviar,ce_colegiaturas_borrar} from '../controllers/cuotaCtr.js'
import {ce_materias,ce_materia_registrar,traerDatosMaterias,ce_actualizarDatosmaterias,ce_materias_borrar,ce_materia_grupo_registrar} from '../controllers/materiasSecCtr.js';
import {ce_horario,cr_horario_crear,cr_horario_cargarDatos,cr_horario_cargarMateriasCarreraDatos} from '../controllers/crearHorarioCtr.js';
import { verifyToken } from '../middlewares/auth.js';
const router = express.Router();
//*login
router.get('/',inicio)
router.post('/login/',signin ); //login

//*menu
router.get('/menu',verifyToken,menu)

//TODO Secretari@s || Director

//*Modulo Usuarios
router.get('/menu/usuarios',verifyToken,Usuarios)
router.post('/menu/usuarios/buscar/',verifyToken,buscar)
router.post('/menu/usuarios/update/',verifyToken,guardarDatosActualizados)
router.post('/menu/usuarios/registrar/',verifyToken,registarUsuario)
router.get('/menu/usuarios/actualizarDatos',verifyToken,llenarDATAusuario)

//*Modulo Ciclo Escolar
router.get('/menu/ciclo-escolar',verifyToken,Control_Escolar)
router.get('/menu/ciclo-escolar/ciclo',verifyToken,ce_cargarCiclo)
router.post('/menu/ciclo-escolar/ciclo/registrar/',verifyToken,ce_ciclo_agregar)

router.post('/menu/ciclo-escolar/ciclo/registrarCarrera-Ciclo/',verifyToken,ce_carreras_agregarCarrera_Ciclo)
    //*Seccion de Carreras
router.get('/menu/ciclo-escolar/carreras',verifyToken,ce_carreras)
router.post('/menu/ciclo-escolar/carreras/busqueda/',verifyToken,ce_carreras_buscar)
router.post('/menu/ciclo-escolar/carreras/registrar/',verifyToken,ce_carreras_agregar)
router.get('/menu/ciclo-escolar/carreras/traerDatoscarrera',verifyToken,llenarDATAcarrera)
router.post('/menu/ciclo-escolar/carreras/update/',verifyToken,ce_actualizarDatosCarrera)

    //*Seccion Grupos y Grados
router.get('/menu/ciclo-escolar/grupos',verifyToken,ce_grupos)
router.post('/menu/ciclo-escolar/grupos/registrar/',verifyToken,ce_grupos_agregar)
router.get('/menu/ciclo-escolar/grupos/traerDatos/',verifyToken,ce_grupos_traerDatos)
router.post('/menu/ciclo-escolar/grupos/actualizar/',verifyToken,ce_grupos_actualizar)

router.get('/menu/ciclo-escolar/aulas',verifyToken,ce_aulas)
    //*Seccion colegiaturas grados y grupos
router.get('/menu/ciclo-escolar/colegiaturas',verifyToken,ce_colegiaturas)
router.get('/menu/ciclo-escolar/colegiaturas/traerDatosColegiaturas',verifyToken,traerDatoscolegiaturas)
router.post('/menu/ciclo-escolar/colegiaturas/update/',verifyToken,ce_actualizarDatosColegiaturas)
router.post('/menu/ciclo-escolar/colegiaturas/enviar/',verifyToken,ce_colegiaturas_enviar)
router.post('/menu/ciclo-escolar/colegiaturas/registrar/',verifyToken,ce_colegiaturas_registrar)
router.get('/menu/ciclo-escolar/colegiaturas/enviar',verifyToken,cr_colegiatura_enviar)
router.get('/menu/ciclo-escolar/colegiaturas/borrar',verifyToken,ce_colegiaturas_borrar)

    //*Seccion materias
router.get('/menu/ciclo-escolar/materias',verifyToken,ce_materias)
router.post('/menu/ciclo-escolar/materias/registrar/',verifyToken,ce_materia_registrar)
router.get('/menu/ciclo-eszcolar/materias/traerDatosMaterias',verifyToken,traerDatosMaterias)
router.post('/menu/ciclo-escolar/materias/update/',verifyToken,ce_actualizarDatosmaterias)
router.get('/menu/ciclo-escolar/materias/borrar',verifyToken,ce_materias_borrar)
router.post('/menu/ciclo-escolar/materias/registrarGrupoMaterias/',verifyToken,ce_materia_grupo_registrar);
    ///*Seccion Horario
router.get('/menu/ciclo-escolar/horario',verifyToken,ce_horario)
router.post('/menu/ciclo-escolar/horario/agregar/',verifyToken,cr_horario_crear)
router.post('/menu/ciclo-escolar/horario/cargarDatos/',verifyToken,cr_horario_cargarDatos)
router.get('/menu/ciclo-escolar/horario/cargarMateriasCarreraDatos/',verifyToken,cr_horario_cargarMateriasCarreraDatos)

//TODO Alumno

//*Modulo colegiaturas
router.get('/menu/colegiaturas',verifyToken,colegiaturasV)
router.get('/menu/colegiaturas/factura',verifyToken,c_getFactura)


router.get('/menu/horario',verifyToken,hoarioV)


router.get('/menu/calificaciones',verifyToken,calificaionesV)
router.get('/menu/calificaciones/boleta',verifyToken,boletaPDF)

//TODO Maestro
router.get('/menu/materias',verifyToken,materias);
router.get('/menu/materias/cargarMaterias/',verifyToken,materiasCargar)
router.get('/menu/materias/cargarAlumnosMateria/',verifyToken,alumnosMateriaCal)
router.post('/menu/materias/agregarCalificacion/',verifyToken,agregarCalificacion)
//TODO Variado
router.get('/registro',verifyToken,regisitro);
router.post('/registro/',verifyToken,crearDireccion);

router.get('/registro/persona',verifyToken,allGenero);
router.get('/menu/usuarios',verifyToken,Usuarios)

router.post('/registro/persona/',verifyToken,crearPersona);



export default router