
/* ejemplo NombreCompleto	Nathalia Maria Orozco Uribe
	   id1_estudiante	11111111
	   clave_estudiante	11111111
	   codigo_estudiante	11111111
	   codigo_materia_cupo	11111111111
	   periodo	 	01
	   Submódulo		Cátedra Ser Emprendedor
	   nombreProfesor	Pendiente
	   descripcion_programa Técnico Laboral como Asistente en Desarrollo de Software ®
		*/
SELECT DISTINCT 
             { fn CONCAT(per.nombre1_estudiante, ' ', per.nombre2_estudiante, ' ', per.apellido1_estudiante, ' ', per.apellido2_estudiante) } AS NombreCompleto, per.id1_estudiante, per.clave_estudiante, mat.codigo_estudiante, cu.codigo_materia_cupo, mat.periodo, 
             Ma.descripcion_materia AS Submódulo, prof.nombre_profesor AS nombreProfesor, Pro.descripcion_programa
FROM   persona AS per CROSS JOIN
             Asesoria AS Ase CROSS JOIN
             Materias_Matriculadas AS mat CROSS JOIN
             Notas_Competencias AS N_Comp CROSS JOIN
             Materias_Cupos AS cu CROSS JOIN
             Profesores AS prof CROSS JOIN
             materias AS Ma CROSS JOIN
             programas AS Pro
WHERE (per.id_codigo = Ase.id_codigo) AND (Ase.codigo_estudiante = mat.codigo_estudiante) AND (mat.codigo_estudiante = N_Comp.Codigo_Estudiante) AND (cu.codigo_materia_cupo = mat.codigo_materia_cupo) AND (prof.id_profesor = cu.id_profesor) AND 
             (ma.codigo_materia = cu.codigo_materia) AND (Ase.codigo_programa = Pro.codigo_programa) AND (per.id_estudiante IN ('11111111111'))