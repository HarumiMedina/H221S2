-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-11-04 06:13:23.327

-- tables
-- Table: ALUMNO
CREATE TABLE ALUMNO (
    CODALU char(5) NOT NULL COMMENT 'Contiene el código del Alumno',
    GRAALU char(5) NOT NULL COMMENT 'Contiene el código de grado del Alumno',
    APOALU char(5) NOT NULL COMMENT 'Contiene el código de Apoderado del Alumno',
    NOMALUM varchar(80) NOT NULL COMMENT 'Contiene el nombre del Alumno',
    APEALU varchar(80) NOT NULL COMMENT 'Contiene el Apellido del Alumno',
    DNIALU varchar(8) NOT NULL COMMENT 'Contiene el DNI del Alumno',
    DIRALU varchar(100) NOT NULL COMMENT 'Contiene la dirección del Alumno',
    CELALU char(9) NOT NULL COMMENT 'Contiene el número de celular del alumno',
    FECALUM date NOT NULL COMMENT 'Contiene la fecha de nacimiento del Alumno',
    SEXALU varchar(20) NOT NULL COMMENT 'Contiene el sexo del Alumno',
    EMAALU varchar(80) NOT NULL COMMENT 'Contiene el Gmail del Alumno ',
    COLEGIO_CODCOL char(5) NOT NULL,
    CONSTRAINT ALUMNO_pk PRIMARY KEY (CODALU)
) COMMENT 'Contiene los datos del  Alumno';

-- Table: APODERADO
CREATE TABLE APODERADO (
    CODAPO char(5) NOT NULL COMMENT 'Contiene  el Código del Apoderado',
    NOMAPO varchar(80) NOT NULL COMMENT 'Contiene el nombre del Apoderado',
    APEAPO varchar(80) NOT NULL COMMENT 'Contiene  el apellido del Apoderado',
    DNIAPO char(8) NOT NULL COMMENT 'Contiene el DNI del Alumno',
    CELAPO char(9) NOT NULL COMMENT 'Contiene el número de celular del alumno',
    DIRAPO varchar(100) NOT NULL COMMENT 'Contiene la fecha de nacimiento del Alumno',
    DISAPO varchar(100) NOT NULL COMMENT 'Contiene la provincia del Apoderado',
    PROAPO varchar(100) NOT NULL COMMENT 'Contiene la provincia del Apoderado',
    DEPAPO varchar(100) NOT NULL COMMENT 'Contiene el departamento del Apoderado',
    EMAAPO varchar(100) NOT NULL COMMENT 'Contiene el email del Apoderado',
    MATRICULA_CODMAT char(5) NOT NULL,
    CONSTRAINT APODERADO_pk PRIMARY KEY (CODAPO)
) COMMENT 'Contiene los datos del Apoderado ';

-- Table: COLEGIO
CREATE TABLE COLEGIO (
    CODCOL char(5) NOT NULL COMMENT 'Contiene el código del Colegio',
    NOMCOL varchar(60) NOT NULL COMMENT 'Contiene el nombre del Colegio',
    RESCOL Integer NOT NULL COMMENT 'Contiene la resolución del Colegio',
    DIRCOL varchar(80) NOT NULL COMMENT 'Contiene la dirección del Colegio',
    TELCOL varchar(9) NOT NULL COMMENT 'Contiene el teléfono del Colegio',
    CIUCOL varchar(15) NOT NULL COMMENT 'Contiene la Ciudad del Colegio',
    DEPCOL varchar(30) NOT NULL COMMENT 'Contiene el departamento del Colegio',
    CONSTRAINT COLEGIO_pk PRIMARY KEY (CODCOL)
) COMMENT 'Contiene los datos del Colegio';

-- Table: CONTACTOS
CREATE TABLE CONTACTOS (
    CODCON char(5) NOT NULL COMMENT 'Contiene el código de contáctanos',
    NOMCON varchar(80) NOT NULL COMMENT 'Contiene el código de contáctanos',
    APECON varchar(80) NOT NULL COMMENT 'Contiene el Apellido de Contáctanos',
    GMACON varchar(100) NOT NULL COMMENT 'Contiene el Gmail de Contáctanos',
    CELCON char(9) NOT NULL COMMENT 'Contiene el numero de celular de Contáctanos',
    MENCON date NOT NULL COMMENT 'Contiene el numero de celular de Contáctanos',
    COLEGIO_CODCOL char(5) NOT NULL,
    CONSTRAINT CONTACTOS_pk PRIMARY KEY (CODCON)
) COMMENT 'Contiene los datos de Contáctanos';

-- Table: CURSOS
CREATE TABLE CURSOS (
    CODCUR char(5) NOT NULL COMMENT 'Contiene el Código del Curso',
    GRACUR char(5) NOT NULL COMMENT 'Contiene el código de Grado del Curso',
    NOMCUR varchar(80) NOT NULL COMMENT 'Contiene el nombre del Curso',
    CANCUR integer NOT NULL COMMENT 'Contiene la Cantidad de Horas del Curso',
    DOCENTE_CODDOC char(5) NOT NULL,
    CONSTRAINT CURSOS_pk PRIMARY KEY (CODCUR)
) COMMENT 'Contiene los datos del  Curso';

-- Table: DOCENTE
CREATE TABLE DOCENTE (
    CODDOC char(5) NOT NULL COMMENT 'Contiene la Cantidad de Horas del Curso',
    CURDOC char(5) NOT NULL COMMENT 'Contiene el código del curso',
    NOMDOC varchar(80) NOT NULL COMMENT 'Contiene el nombre del Docente',
    APEDOC varchar(80) NOT NULL COMMENT 'Contiene  el apellido del Docente',
    DNIDOC char(8) NOT NULL COMMENT 'Contiene  el DNI i del Docente',
    DIRECDOC varchar(100) NOT NULL COMMENT 'Contiene  la dirección del Docente',
    CELDOC char(9) NOT NULL COMMENT 'Contiene el número de celular del Docente',
    EMADOC varchar(100) NOT NULL COMMENT 'Contiene  el Email del Docente',
    FECDOC date NOT NULL COMMENT 'Contiene la Fecha de Nacimiento del Docente',
    COLEGIO_CODCOL char(5) NOT NULL,
    CONSTRAINT DOCENTE_pk PRIMARY KEY (CODDOC)
) COMMENT 'Contiene los datos del Docente';

-- Table: GRADO
CREATE TABLE GRADO (
    CODGRA char(5) NOT NULL COMMENT 'Contiene el código de Grado ',
    SECGRA char(1) NOT NULL COMMENT 'Contiene la sección del Grado',
    NIVGRA char(1) NOT NULL COMMENT 'Contiene el nivel del Grado',
    COLEGIO_CODCOL char(5) NOT NULL,
    CONSTRAINT GRADO_pk PRIMARY KEY (CODGRA)
) COMMENT 'Contiene los datos del Grado';

-- Table: MATRICULA
CREATE TABLE MATRICULA (
    CODMAT char(5) NOT NULL COMMENT 'Contiene  el código de la Matricula',
    ALUMAT char(5) NOT NULL COMMENT 'Contiene el Código del Alumno de la Matricula',
    GRAMAT char(5) NOT NULL COMMENT 'Contiene  contiene el código de grado de la Matricula',
    FOTMAT varchar(1) NOT NULL COMMENT 'Contiene la foto del alumno de la Matrícula ',
    DNIMAT char(8) NOT NULL COMMENT 'Contiene el DNI del Apoderado de la Matrícula ',
    CONMAT integer NOT NULL COMMENT 'Contiene el DNI del Apoderado de la Matricula ',
    PARMAT varchar(100) NOT NULL COMMENT 'Contiene la Partida de Nacimiento del Estudiante',
    COLEGIO_CODCOL char(5) NOT NULL,
    CONSTRAINT MATRICULA_pk PRIMARY KEY (CODMAT)
) COMMENT 'Contiene los datos de la Matrícula ';

-- foreign keys
-- Reference: ALUMNO_COLEGIO (table: ALUMNO)
ALTER TABLE ALUMNO ADD CONSTRAINT ALUMNO_COLEGIO FOREIGN KEY ALUMNO_COLEGIO (COLEGIO_CODCOL)
    REFERENCES COLEGIO (CODCOL);

-- Reference: APODERADO_MATRICULA (table: APODERADO)
ALTER TABLE APODERADO ADD CONSTRAINT APODERADO_MATRICULA FOREIGN KEY APODERADO_MATRICULA (MATRICULA_CODMAT)
    REFERENCES MATRICULA (CODMAT);

-- Reference: CONTACTOS_COLEGIO (table: CONTACTOS)
ALTER TABLE CONTACTOS ADD CONSTRAINT CONTACTOS_COLEGIO FOREIGN KEY CONTACTOS_COLEGIO (COLEGIO_CODCOL)
    REFERENCES COLEGIO (CODCOL);

-- Reference: CURSOS_DOCENTE (table: CURSOS)
ALTER TABLE CURSOS ADD CONSTRAINT CURSOS_DOCENTE FOREIGN KEY CURSOS_DOCENTE (DOCENTE_CODDOC)
    REFERENCES DOCENTE (CODDOC);

-- Reference: DOCENTE_COLEGIO (table: DOCENTE)
ALTER TABLE DOCENTE ADD CONSTRAINT DOCENTE_COLEGIO FOREIGN KEY DOCENTE_COLEGIO (COLEGIO_CODCOL)
    REFERENCES COLEGIO (CODCOL);

-- Reference: GRADO_COLEGIO (table: GRADO)
ALTER TABLE GRADO ADD CONSTRAINT GRADO_COLEGIO FOREIGN KEY GRADO_COLEGIO (COLEGIO_CODCOL)
    REFERENCES COLEGIO (CODCOL);

-- Reference: MATRICULA_COLEGIO (table: MATRICULA)
ALTER TABLE MATRICULA ADD CONSTRAINT MATRICULA_COLEGIO FOREIGN KEY MATRICULA_COLEGIO (COLEGIO_CODCOL)
    REFERENCES COLEGIO (CODCOL);

-- End of file.

