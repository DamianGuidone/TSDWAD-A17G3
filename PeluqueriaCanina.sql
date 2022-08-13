Create database PeluqueriaCanina;

use PeluqueriaCanina;

create table dueno (
dni_d int  not null,
nom_d varchar (25),
apellido_d varchar (25),
tel_d varchar (15),
domic_d varchar (25),
constraint pk_cd primary key (dni_d)
);

create table perro (
id_perro int not null auto_increment,
nom_p varchar (25),
fechaNac_p date,
sexo_p bit,
dniD_h1 int, 
constraint pk_cp primary key (id_perro),
constraint fk_fh1 foreign key (dniD_h1) references dueno (dni_d)
);

create table historial (
id_h int not null auto_increment,
fecha_h date,
id_perro_h int,
descrip_h varchar (100),
monto_h float,
constraint pk_ch primary key (id_h),
constraint fk_fh2 foreign key (id_perro_h) references perro (id_perro)
);

insert into dueno values (30899525, "Pedro", "González","155333205","Av Gral Paz 130");

Insert into perro values ( "Lorenzo", 2012/07/11, 1);

