CREATE DATABASE IF NOT EXISTS camusdb;
USE camusdb;

CREATE TABLE IF NOT EXISTS usuario (
		id_usr int primary key not null AUTO_INCREMENT,
        usr varchar(255),
        pass varchar(255),
        nombre varchar(255),
		fecha_nacimiento date,
        tel INT,
        tel2 INT,
        notas varchar(255),
        email varchar(255),
        fecha_alta date,
        imagenb MEDIUMBLOB,
        rol INT
	);
ALTER TABLE usuario AUTO_INCREMENT = 1000;

CREATE TABLE IF NOT EXISTS categoria (
		id_cat	int primary key not null AUTO_INCREMENT,
        nombre varchar(255),
        descripcion TEXT,
		fecha_alta date
        
	);
ALTER TABLE categoria AUTO_INCREMENT = 1000;


CREATE TABLE IF NOT EXISTS dependencia (
		id_dependencia int primary key not null AUTO_INCREMENT,
		nombre varchar(255),
        descripcion TEXT,
		fecha_alta date
	);
ALTER TABLE dependencia AUTO_INCREMENT = 1000;

  
CREATE TABLE IF NOT EXISTS cita (
		id_cita int primary key not null AUTO_INCREMENT,
        idfk_usrdoctor INT,
        idfk_usrpaciente INT,
		nombre varchar(255),
        fecha date,
		CONSTRAINT fk_cita_usrdoctor Foreign key (idfk_usrdoctor) REFERENCES usuario (id_usr),
        CONSTRAINT fk_cita_usrpaciente Foreign key (idfk_usrpaciente) REFERENCES usuario (id_usr)

	);
ALTER TABLE cita AUTO_INCREMENT = 1000;      
    

CREATE TABLE IF NOT EXISTS nota_medica (
		id_nota_medica int primary key not null AUTO_INCREMENT,
        idfk_doctor INT,
        idfk_paciente INT,
        asunto varchar(255),
        descripcion TEXT,
		fecha datetime,
		CONSTRAINT fk_nota_usrdoctor Foreign key (idfk_usrdoctor) REFERENCES usuario (id_usr),
        CONSTRAINT fk_nota_usrpaciente Foreign key (idfk_usrpaciente) REFERENCES usuario (id_usr)

	);
ALTER TABLE nota_medica AUTO_INCREMENT = 1000;

  
CREATE TABLE IF NOT EXISTS usuario_categoria (
		id_usuariocategoria int primary key not null AUTO_INCREMENT,
        idfk_usuario INT,
        idfk_categoria INT,
		CONSTRAINT fk_categoria_usuario Foreign key (idfk_usuario) REFERENCES usuario (id_usuario),
        CONSTRAINT fk_categoria_categoria Foreign key (idfk_categoria) REFERENCES categoria (id_categoria)

	);
ALTER TABLE usuario_categoria AUTO_INCREMENT = 1000;  

 