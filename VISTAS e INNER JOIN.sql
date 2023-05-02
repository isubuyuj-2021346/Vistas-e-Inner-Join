/*VISTAS E INNER JOINS*/
Use Centro_Educativo_Edu;

-- *****************************************************************************************************************

CREATE VIEW VistaCurso
AS
	SELECT C.id_curso AS 'IDCURSO', C.nombre_curso AS 'MATERIAS', C.hora_de_inicio AS 'INICIA.A.LAS', 
    C.hora_de_finalizacion AS 'TERMINA.A.LAS', C.Catedratico AS 'CODEP', nombre_profe AS 'N.P', apellido_profe AS 'A.P'
    FROM Curso AS C
    INNER JOIN Profesores AS P ON C.Catedratico = P.codigo_profe;

SELECT * FROM VistaCurso;

-- *****************************************************************************************************************

CREATE VIEW VistaGrados
AS
	SELECT G.id_grados AS 'IDG', G.grado AS 'G', G.estudiante AS 'CARNÉ', A.nombres_alum AS 'N.A.', 
    A.apellidos_alum AS 'A.A.', A.correoe_alum AS 'CorreoE.'
	FROM Grados AS G
	INNER JOIN Alumno AS A ON G.estudiante = A.id_alum;

SELECT * FROM VistaGrados;

-- *****************************************************************************************************************

CREATE VIEW VistaAsignacion
AS
	SELECT ASIG.id_asignacion AS 'ID.ASIGNACIÓN', ASIG.materia_id AS 'MATERIA.ID', 
    C.nombre_curso AS 'MATERIAS', ASIG.degree AS 'ID.GRADOS', G.grado AS 'GRADO'
FROM Asignacion AS ASIG
INNER JOIN Curso AS C ON ASIG.materia_id = C.id_curso
INNER JOIN Grados AS G ON ASIG.degree = G.id_grados;

SELECT * FROM VistaAsignacion;

-- *****************************************************************************************************************
