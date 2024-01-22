use master;
go
drop database if exists
teretana;
go
--ovo je komentar
create database teretana collate Croatian_CI_AS;
go
--drop database teretana;
--use master
use teretana;



create table korisnici(
sifra int not null primary key identity(1,1),
ime varchar(50),
prezime varchar(50),
datumrodenja datetime,
email varchar(50),
telefon varchar(50),
trener_sifra int not null

);


create table treneri(
sifra int not null primary key identity (1,1),
ime varchar(50),
prezime varchar(50),
specijalizacija varchar(50),
radnovrijeme varchar(30)




insert into treneri (ime,prezime,specijalizacija,radnovrijeme) values
--1
 ('Marko','Ilic','rad na gluteusu','08:00-22:00'),
 --2
 ('Luka','Tomic','rad na bicepsima','08:00-22:00');


 --od 1 do 10
 insert into korisnici (ime, prezime, datumrodenja, email,telefon,trenersifra) values

('Dragana','Jankovic', '1988-11-11','draganjankovica@gmail.com','0981600669',1),
('Svetlana','Grkovic','1980-08-11','svetlanagrkovic@gmail.com','0983336679',2),
('Igor','Kos','1993-02-02','igorkos@gmail.com','091342556',1),
('Bojan','Markovic','1994-09-04','bojanmarkovic@gmail.com','0985557676',2),
('Ana','Matic','1992-05-05','anamatic@gmail.com','0976543318',1),
('Jelena','Benic','1991-02-01','jelenabenic@gmail.com','0976693414',2),
('Luka','Jelic','1992-09-08','lukajelic@gmail.com','0987735454',1),
('Tamara','Vojnovic','1991-03-02','tamaravojnovic@gmail.com','0912203434',2),
('Marko','Veselinovic','1995-06.06','markoveselinovic@gmail.com','0971110909',1),
('Dina','Markovic','1996-01-01','dinamarkovic@gmail.com','098787909',2),
('Ivan','Maric','1991-09-09','ivanmaric@gmail.com)','097552233',1);









alter table korisnici add foreign key (trener_sifra) references treneri(sifra);
