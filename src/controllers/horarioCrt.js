import db from "../dbConnection/bd.js";

export const hoarioV = async(req, res) => {
    const seccion = 'horario';
    const ops = req.query.ops;
    let id_grupo= '';
    let buscar= 'act';

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const grupo = await db.query('call pr_grupos("todos", 1);');
    const maestros = await db.query('call pr_maestros();');
    const materias = await db.query('call pr_materias("todos",1);');
    const diasHoras = await db.query('call pr_dias_horas();');
    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    if(persona[0]['id_grupo']==null){
        id_grupo = persona[0]['id_maestro']
        buscar='seg'
    }else{
        id_grupo = persona[0]['id_grupo'];
    }
    const maestrosmateriashoras = await db.query('call pr_maestrosmateriashoras(:buscar,:id);',{replacements:{buscar:buscar,id:id_grupo}})
    console.log(maestrosmateriashoras)
    res.render('menu',{usuario,seccion,operaciones,ops,grupo,maestros,materias,diasHoras,maestrosmateriashoras});
}