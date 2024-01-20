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


);



alter table korisnici add foreign key (trener_sifra) references treneri(sifra);
