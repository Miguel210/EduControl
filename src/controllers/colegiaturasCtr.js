import db from "../dbConnection/bd.js";
import PDF from 'pdfkit-construct';
import fs from 'fs'

export const colegiaturasV = async(req, res) => {
    const seccion = "colegiatura";
    const ops = req.query.ops;

    const usuario = await db.query('call pr_modulos(:id)',{replacements: {id:req.currentUser.id}});
    const operaciones = await db.query('call pr_operaciones(:id,:modulo)',{replacements: {id: req.currentUser.id, modulo: 'ciclo-escolar'}});

    const alumnoColegiaturas = await db.query('call pr_colegiaturas_alumnos(:id,1,"todos");',{replacements:{id: req.currentUser.id}});


    res.render('menu',{usuario,seccion,operaciones,ops,alumnoColegiaturas});
}

export const c_getFactura = async(req, res) => {
    let datos = await db.query('call pr_colegiaturas_alumnos(:id,:idCole,"down");',{replacements: {id:req.currentUser.id,idCole:req.query.cole}});
    const filename = 'Orden_de_pago_'+req.query.cole+".pdf";

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

    doc.setDocumentHeader({
        height: '16%'
    }, () => {
        doc.fontSize(15).text('Orden de Pago', {
            width: 420,
            align: 'center',
        })

        doc.fontSize(12).text(`Nombre: ${datos[0]['NombrePersona']}`, {
            width: 420,
            align: 'left',
        })
        doc.fontSize(12).text(`Matricula: ${datos[0]['matricula']}`, {
            width: 420,
            align: 'left',
        })
        doc.fontSize(12).text(`Codigo de Pago: 12346582${req.currentUser.id}${req.query.cole}`, {
            width: 420,
            align: 'left',
        })
    });


    doc.addTable([
        {key:'nombre', label: 'nombre', align: 'left'},
        {key:'descripcion', label: 'descripcion', align: 'left'},
        {key:'fecha_limite', label: 'fecha_limite', align: 'left'},
        {key:'monto', label: 'monto', align: 'left'},
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
    doc.render();

    doc.end();
}