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
    
     insert into dueno (dni_d, nom_d, apellido_d, tel_d, domic_d) values (25899525, "Alfonso", "Martinez","156450680","Av Patria 200");

    insert into perro (nom_p, fechaNac_p, sexo_p) values ( "Bobby", '2015-01-09', 0);

 select fecha_h from historial where fecha_h <= "2000/01/01";

delete from historial where fecha_h <= "2000/01/01";
    
