create database PeluqueriaCanina;
use PeluqueriaCanina;
create table Dueno (
	DNI_d int,
    nom_d varchar (20),
	apellido_d varchar (20),
	tel_d varchar (15),
	domic_d varchar (50),
	constraint pk_cd primary key (DNI_d)
);
 #EJERCICIO 2 y datos varios para realizar ejercicios
insert into dueno values (38469555, "Marta", "Sismaj", "2654445699", "Lavalle 431, Calachita, Tucumán");
insert into dueno values (35490955, "Pedro", "Corcho", "2604458985", "Cisneros 989, Malargue, Mendoza");
insert into dueno values (31425365, "Pedro", "Milán", "2616589036", "Gral.Paz 54, Godoy Cruz, Mendoza");
insert into dueno values (33456774, "Carla", "Contreras", "114512635", "Moscú 589, Termitas, Buenos Aires");
insert into dueno values (37465599, "Pedro", "Lozano", "1145896321", "Av. San Martín 1569, Vicente Lopez, CABA");

create table perro (
	ID_Perro int not null AUTO_INCREMENT,
	nom_p varchar (20),
    fechaNac_p date,
    sexo_p varchar (20),
    DNI_dueno int, 
    constraint pk_cp primary key (ID_Perro),
    constraint fk_fh1 foreign key (DNI_dueno) references dueno (DNI_d)
);

#EJERCICIO 1
    insert into perro(nom_p, fechaNac_p, sexo_p, DNI_dueno) values ("Choki", '2022/01/12', "Hembra", 35490955);
    insert into perro(nom_p, fechaNac_p, sexo_p, DNI_dueno) values ("Mica", '2021/05/23', "Hembra", 33456774);
	insert into perro(nom_p, fechaNac_p, sexo_p, DNI_dueno) values ("Lori", '2022/02/05', "Macho", 31425365);
    insert into perro(nom_p, fechaNac_p, sexo_p, DNI_dueno) values ("Kino", '2022/04/15', "Macho", 38469555);
    insert into perro(nom_p, fechaNac_p, sexo_p, DNI_dueno) values ("Pikachu", '2021/12/10', "Macho", 37465599);
    ALTER TABLE perro MODIFY ID_Perro int not null AUTO_INCREMENT;

create table historial (
	ID_Historial int not null auto_increment,
    Fecha_h date,
    Descrip_h varchar (50),
    Monto_h float,
    ID_p int,
	constraint pk_ch primary key (ID_Historial),
    constraint fk_fh2 foreign key (ID_p) references perro (ID_Perro)
);

insert into historial(Fecha_h, Descrip_h, Monto_h, ID_p) values ('2022/08/02', "Corte Cacho", 1200, 1);
insert into historial(Fecha_h, Descrip_h, Monto_h, ID_p) values ('2022/08/03', "Secado Completo", 500, 2);
insert into historial(Fecha_h, Descrip_h, Monto_h, ID_p) values ('2022/08/03', "Lavado, Corte y Secado Completo", 3200, 5);
insert into historial(Fecha_h, Descrip_h, Monto_h, ID_p) values ('2022/08/10', "Lavado, Corte y Secado Completo", 3200, 4);
insert into historial(Fecha_h, Descrip_h, Monto_h, ID_p) values ('2022/08/10', "Lavado, Corte", 3000, 3);
ALTER TABLE historial MODIFY ID_Historial int not null AUTO_INCREMENT;

USE PeluqueriaCanina; SELECT * FROM dueno;
USE PeluqueriaCanina; SELECT * FROM perro;
USE PeluqueriaCanina; SELECT * FROM historial;

#EJERCICIO 5
SELECT nom_p, nom_d, DNI_d, DNI_dueno FROM dueno INNER JOIN perro on dueno.DNI_d=perro.DNI_dueno WHERE nom_d="Pedro";


