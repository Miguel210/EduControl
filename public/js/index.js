/*const myCarousel = document.getElementById('carouselExampleAutoplaying')

const carousel = new bootstrap.Carousel(myCarousel, {
    interval:2000,
})*/
$(document).ready(function() {
    $("#grupos").on("change", function() {
        var valor = $(this).val();
        console.log(valor);

        $.ajax({
            url: '/menu/ciclo-escolar/horario/cargarMateriasCarreraDatos/?id='+valor,
            method: 'GET',
            success: function(data) {
                const id_materia = data[0]['id_materia']
                console.table(data.length)
                var materiaElement = document.getElementById('materia');
                materiaElement.innerHTML = '';
                for (var i = 0; i < data.length; i++) {
                    var ops_materia = document.createElement("option");
                    ops_materia.value = data[i]['id_materia'];
                    ops_materia.text = data[i]['nombre']
                    materiaElement.appendChild(ops_materia);
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    });

    $('#gruposM').on("change", function(){
        var valor = $(this).val();
        console.log(valor);

        $.ajax({
            url: '/menu/materias/cargarMaterias/?idg='+valor,
            method: 'GET',
            success: function(data) {
                var idgrupos = document.getElementById("grupo_a");
                idgrupos.value = valor;

                var materiaElement = document.getElementById('materiaGrupo');
                materiaElement.innerHTML = '';
                for (var i = 0; i < data.length; i++) {
                    var ops_materia = document.createElement("option");
                    ops_materia.value = data[i]['id_materia'];
                    ops_materia.text = data[i]['nombre']
                    materiaElement.appendChild(ops_materia);
                }
            },
            error: function(error) {
                console.log(error);
            }
        });
    });

    $('#materiaGrupo').on('change', function() {
        var idgrupos = document.getElementById("grupo_a");

        var valor1 = $(this).val();

        console.log('hhaa')
        console.log(valor1+" - "+idgrupos.value);

        const tbody = document.getElementById("tbody");
        tbody.innerHTML = '';
        $.ajax({
            url: '/menu/materias/cargarAlumnosMateria/?idg='+idgrupos.value+"&idmat="+valor1,
            method: 'GET',
            success: function(data) {

                for(var i=0;i < data[0].length; i++) {
                    var tr = document.createElement('tr')
                    var td1 = document.createElement('td');
                    var td2 = document.createElement('td');
                    var td3 = document.createElement('td');
                    var td4 = document.createElement('td');


                    td1.textContent = data[0][i]['id_alumno']
                    tr.appendChild(td1);
                    td2.textContent = data[0][i]['nombre']
                    tr.appendChild(td2);
                    td3.textContent = data[0][i]['unidad']
                    tr.appendChild(td3);
                    td4.textContent = data[0][i]['calificacion']
                    tr.appendChild(td4);

                    tbody.appendChild(tr)
                }

                var materiaElement = document.getElementById('alumnosSN');
                materiaElement.innerHTML = '';
                for (let i = 0; i < data[1].length; i++) {
                    var ops_materia = document.createElement("option");
                    ops_materia.text = data[1][i]['nombre']
                    ops_materia.value = data[1][i]['id_alumo_materia']
                    materiaElement.appendChild(ops_materia);
                }

            },
            error: function(error) {
                console.log(error);
            }
        });

    });
});

$(document).ready(function() {
    $("#perfiles").on("change", function() {
        var valor = $(this).val();
        console.log(valor);
        if (valor === "1") {
            $("#datosRegistroAlumno").show();
        } else {
            $("#datosRegistroAlumno").hide();
        }

        if (valor === "2") {
            $("#datosRegistroMaestro").show();
        } else {
            $("#datosRegistroMaestro").hide();
        }
    });
    $("#perfil").on("change", function() {
        var valor = $(this).val();
        console.log(valor);
        if (valor === "1") {
            $("#datosRegistroAlumnoU").show();
        } else {
            $("#datosRegistroAlumnoU").hide();
        }

        if (valor === "2") {
            $("#datosRegistroMaestroU").show();
        } else {
            $("#datosRegistroMaestroU").hide();
        }
    });
});

$('#actualizarCarrreraDATA').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Botón que activó el modal
    var id = button.data('id'); // Obtener el ID del botón
    var modal = $(this);

    $.ajax({
        url: '/menu/ciclo-escolar/carreras/traerDatoscarrera?id='+id,
        method: 'GET',
        success: function(data) {
            const id_carrera = data[0]['id_carrera']
            const descripcion = data[0]['descripcion']

            $('#id_carreraU').val(id_carrera);
            $('#descripcionU').val(descripcion);
        },
        error: function(error) {
            console.log(error);
        }
    });
});
$('#actualizarCarrreraDATA').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Botón que activó el modal
    var id = button.data('id'); // Obtener el ID del botón
    var modal = $(this);

    $.ajax({
        url: '/menu/ciclo-escolar/carreras/traerDatoscarrera?id='+id,
        method: 'GET',
        success: function(data) {
            const id_carrera = data[0]['id_carrera']
            const descripcion = data[0]['descripcion']

            $('#id_carreraU').val(id_carrera);
            $('#descripcionU').val(descripcion);
        },
        error: function(error) {
            console.log(error);
        }
    });
});

$('#actualizarGrupoDATA').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Botón que activó el modal
    var id = button.data('id'); // Obtener el ID del botón
    var modal = $(this);

    $.ajax({
        url: '/menu/ciclo-escolar/grupos/traerDatos/?id='+id,
        method: 'GET',
        success: function(data) {
            const id_grupo = data[0]['id_grupo']
            const id_grado = data[0]['id_grado']
            const id_carrera_ciclo = data[0]['id_carrera_ciclo']

            const grupo = data[0]['grupo']
            const grado = data[0]['grado']
            const inicio = data[0]['inicio']
            const final = data[0]['final']


            var carreraElement = document.getElementById('carrera');
            var ops_carrera = carreraElement.options;
            for (var i = 0; i < carreraElement.length; i++) {
                if (ops_carrera[i].value == id_carrera_ciclo) {
                    ops_carrera[i].selected = true;
                    break;
                }
            }
            $('#id_grupo').val(id_grupo);
            $('#id_grado').val(id_grado);

            $('#grupo').val(grupo);
            $('#grado').val(grado);
            $('#Inicio').val(inicio);
            $('#Final').val(final);
        },
        error: function(error) {
            console.log(error);
        }
    });
});


$('#actualizarColegiaturaDATA').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Botón que activó el modal
    var id = button.data('id'); // Obtener el ID del botón
    var modal = $(this);

    $.ajax({
        url: '/menu/ciclo-escolar/colegiaturas/traerDatosColegiaturas?id='+id,
        method: 'GET',
        success: function(data) {
            const id_colegiatura = data[0]['id_colegiatura']
            const nombre = data[0]['nombre']
            const descripcion = data[0]['descripcion']
            const fecha_limite = data[0]['fecha_limite']
            const monto= data[0]['monto']
            const status = data[0]['status']

            $('#colegiatura').val(id_colegiatura);
            $('#nombre').val(nombre);
            $('#descripcion').val(descripcion);
            $('#fecha_limite').val(fecha_limite);
            $('#monto').val(monto);
            $('#status').val(status);

        },
        error: function(error) {
            console.log(error);
        }
    });
});


$('#actualizarDATA').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget); // Botón que activó el modal
    var id = button.data('id'); // Obtener el ID del botón
    var modal = $(this);
    modal.find('#modalId').text(id); // Insertar el ID en el cuerpo del modal

    console.log(id)
    $.ajax({
        url: '/menu/usuarios/actualizarDatos?id='+id,
        method: 'GET',
        success: function(data) {
            const id_persona = data[0]['id_persona'];
            const id_direccion = data[0]['id_direccion'];
            const id_genero = data[0]['id_genero'];
            const id_perfil = data[0]['id_perfil'];
            const id_grupo = data[0]['id_grupo'];

            const nombre = data[0]['nombre'];
            const app_mat = data[0]['app_mat'];
            const app_pat = data[0]['app_pat'];
            const fnac = data[0]['fnac'];
            const seguro_social = data[0]['seguro_social'];
            const password = data[0]['password'];
            const telefono = data[0]['telefono'];
            const correo = data[0]['correo'];

            const ciudad = data[0]['ciudad'];
            const colonia = data[0]['colonia'];
            const cp = data[0]['cp'];
            const calle1 = data[0]['calle1'];
            const calle2 = data[0]['calle2'];
            const referencia = data[0]['referencia'];

            const id_alumno = data[0]['id_alumno'];
            const matricula = data[0]['matricula'];
            const promedio = data[0]['promedio'];

            const id_maestro = data[0]['id_maestro']
            const cedula = data[0]['cedula'];
            const AniosExp = data[0]['anios_exp'];
            const especialidad = data[0]['especialidad'];
            // Llama a la función para actualizar los datos en el modal
                actualizarModal(id_persona,id_direccion,id_genero,id_perfil,id_grupo,id_alumno,id_maestro,nombre, 
                    app_mat, app_pat, fnac, seguro_social, password, telefono, correo, ciudad, colonia, cp, calle1, calle2, 
                    referencia,matricula,promedio,cedula,AniosExp,especialidad);
        },
        error: function(error) {
            console.log(error);
        }
    });
});

function actualizarModal(id_persona,id_direccion,id_genero,id_perfil,id_grupo,id_alumno,id_maestro,nombre, 
    app_mat, app_pat, fnac, seguro_social, password, telefono, correo, ciudad, colonia, cp, calle1, calle2, 
    referencia,matricula,promedio,cedula,AniosExp,especialidad) {
    // Actualiza los valores de los campos en el modal utilizando jQuery
    var perfil = document.getElementById('perfil');
    var genero = document.getElementById('genero');
    var grupo = document.getElementById('grupo');
    var ops_perfil = perfil.options;
    var ops_genero = genero.options;
    var ops_grupo = grupo.options;



    for (var i = 0; i < perfil.length; i++) {
        if (ops_perfil[i].value == id_perfil) {
            ops_perfil[i].selected = true;
            break;
        }
    }
    for (var i = 0; i < genero.length; i++) {
        if (ops_genero[i].value == id_genero) {
            ops_genero[i].selected = true;
            break;
        }
    }
    for (var i = 0; i < grupo.length; i++) {
        if (ops_grupo[i].value == id_grupo) {
            ops_grupo[i].selected = true;
            break;
        }
    }
    $('#id_direccion').val(id_direccion);
    $('#id_persona').val(id_persona);
    $('#nombre').val(nombre);
    $('#app_mat').val(app_mat);
    $('#app_pat').val(app_pat);
    $('#fnac').val(fnac);
    $('#seguro_social').val(seguro_social);
    $('#password').val(password);
    $('#telefono').val(telefono);
    $('#correo').val(correo);
    $('#ciudad').val(ciudad);
    $('#colonia').val(colonia);
    $('#cp').val(cp);
    $('#calle1').val(calle1);
    $('#calle2').val(calle2);
    $('#referencia').val(referencia);

    $('#id_alumno').val(id_alumno);
    $('#matricula').val(matricula);
    $('#promedio').val(promedio);

    $('#id_maestro').val(id_maestro);
    $('#cedula').val(cedula);
    $('#AniosExp').val(AniosExp);
    $('#especialidad').val(especialidad);

}
