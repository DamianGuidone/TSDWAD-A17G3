-- Active: 1660352445776@@127.0.0.1@3306@peluqueriacanina
create database PeluqueriaCanina;

use PeluqueriaCanina;

    create table dueno (
        id_d int not null auto_increment,
        dni_d int,
        nom_d varchar (20),
        apellido_d varchar (20),
        tel_d varchar (15),
        domic_d varchar (50),
        constraint pk_cd primary key (id_d)
    );

    create table perro (
        id_perro int not null auto_increment,
        nom_p varchar (20),
        fechaNac_p date,
        sexo_p boolean,
        id_d_h int, 
        constraint pk_cp primary key (id_perro),
        constraint fk_fh1 foreign key (id_d_h) references dueno (id_d)
    );

    create table historial (
        id_h int not null auto_increment,
        fecha_h date,
        id_perro_h int,
        descrip_h varchar (50),
        monto_h float,
        constraint pk_ch primary key (id_h),
        constraint fk_fh2 foreign key (id_perro_h) references perro (id_perro)
    );

    --2- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente 
    --y el dueño asociado a ese animal.
    INSERT INTO dueno (dni_d,nom_d,apellido_d,tel_d,domic_d)
    VALUES (33061171, "DAMIÁN", "GUIDONE", "3541380445", "LA RIOJA 87 - TANTI - CÓRDOBA");
    COMMIT;
    --sexo TRUE = HEMBRA, FALSE = MACHO
    INSERT INTO perro (nom_p,fechaNac_p,sexo_p,id_d_h)
    VALUES ("COLITA",STR_TO_DATE('25/05/18','%d/%m/%Y'),TRUE,1);
    commit;
    --8- Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10
    INSERT INTO historial (id_perro_h,monto_h,fecha_h,descrip_h)
    VALUES (10,982.5,STR_TO_DATE('13/08/22','%d/%m/%Y'),"Atención de rutina - sin novedades");


