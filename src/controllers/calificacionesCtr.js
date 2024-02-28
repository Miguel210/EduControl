import db from "../dbConnection/bd.js";
import PDF from 'pdfkit-construct';
import fs from 'fs'

export const calificaionesV = async (req,res) => {

    const seccion = 'calificaciones';
    const ops  ="calificaciones";

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const persona = await db.query('call pr_persona(:id);',{replacements:{id:req.currentUser.id}})
    const ida = persona[0]['id_alumno'];
    const idg = persona[0]['id_grupo'];

    const calificaionesV = await db.query('call pr_mostrar_calificacion(:idg,:ida)',{replacements:{idg:idg,ida:ida}});
    const promedio = await db.query('call pr_boleta(:idg,:ida)',{replacements:{idg:persona[0]['id_grupo'],ida:persona[0]['id_alumno']}});
    let prom = Number(0);
    let tamPromedio = promedio.length;
    promedio.forEach(element => {
        prom += Number(element.promedio)
    });
    let promF = parseInt(prom/tamPromedio);

    res.render('menu',{usuario,seccion,operaciones,ops,calificaionesV,promF});
}

export const boletaPDF = async (req, res) => {
    const persona = await db.query('call pr_persona(:idp)',{replacements:{idp:req.currentUser.id}});
    console.log(persona[0]['id_grupo']+" "+persona[0]['id_alumno'])
    const datos = await db.query('call pr_boleta(:idg,:ida)',{replacements:{idg:persona[0]['id_grupo'],ida:persona[0]['id_alumno']}});


    const filename = 'boleta_'+persona[0]['nombre']+".pdf";
    const stream = res.writeHead(200,{
        'Content-Type': 'application/pdf',
        'Content-disposition': `attachment; filename=${filename}`
    });
    const doc = new PDF({
        size: 'A4',
        bufferPages: true,
    });
    doc.on('data', (data) => {stream.write(data)})
    doc.on('end', () => {stream.end()})


    if(datos.length==0){
        doc.setDocumentHeader({
            height: '16%'
        }, () => {
            doc.fontSize(15).text('NO HAY CALIFICACIONES', {
                width: 420,
                align: 'center',
            })
        });
    }else{
            doc.setDocumentHeader({
                height: '16%'
            }, () => {
                doc.fontSize(15).text('Boleta', {
                    width: 420,
                    align: 'center',
                })
                doc.fontSize(12).text(`Nombre: ${persona[0]['nombre']}`, {
                    width: 420,
                    align: 'left',
                })
                doc.fontSize(12).text(`Matricula: ${persona[0]['matricula']}`, {
                    width: 420,
                    align: 'left',
                })
                doc.fontSize(12).text(`Ciclo escolar:`, {
                    width: 420,
                    align: 'left',
                })
            });
            doc.addTable([
                {key:'nombre', label: 'nombre', align: 'left'},
                {key:'promedio', label: 'promedio', align: 'left'},
            ],datos,{
                border: null,
                width: "fill_body",
                striped: true,
                stripedColors: ["#f6f6f6", "#d6c4dd"],
                cellsPadding: 10,
                marginLeft: 45,
                marginRight: 45,
                headAlign: 'center'
            })
            let promF = Number(0);
            let tamPromedio = datos.length;
            datos.forEach(element => {
                promF += Number(element.promedio)
            });

            doc.setDocumentFooter({
                height: '60%'
            }, () =>{
                doc.fontSize(15).text('Promedio: '+(promF/tamPromedio),  doc.footer.x+10, doc.footer.y+10)
            })
    }
    doc.render();
    doc.end();


}