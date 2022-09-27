create database viagens;


CREATE TABLE Local (
id_local INTEGER PRIMARY KEY auto_increment,
cidade VARCHAR(50),
uf VARCHAR(2)
);

CREATE TABLE Passagem (
id_pass INTEGER PRIMARY KEY auto_increment,
cpf_passageiro VARCHAR(14),
classe VARCHAR(10),
preco_pass DECIMAL(5,2),
id_voo INTEGER,
id_pac INTEGER,
id_com INTEGER
);

CREATE TABLE Pacote (
id_pac INTEGER PRIMARY KEY auto_increment,
nome_pac VARCHAR(50),
des_pac VARCHAR(500),
total_pac DECIMAL(6,2),
id_cli INTEGER
);

CREATE TABLE Cliente (
id_cli INTEGER PRIMARY KEY auto_increment,
cpf_cli VARCHAR(14),
nome_cli VARCHAR(100),
data_nasc DATE,
tel_cli VARCHAR(20),
senha VARCHAR(20),
email VARCHAR(100),
logradouro VARCHAR(100),
id_local INTEGER,
FOREIGN KEY(id_local) REFERENCES Local (id_local)
);

CREATE TABLE Hospedagem (
id_hos INTEGER PRIMARY KEY auto_increment,
cnpj_hos VARCHAR(20),
nome_hos VARCHAR(100),
tipo_hos VARCHAR(20),
preco_dia DECIMAL(5,2),
id_local INTEGER,
FOREIGN KEY(id_local) REFERENCES Local (id_local)
);

CREATE TABLE Reserva (
id_res INTEGER PRIMARY KEY auto_increment,
quartos INTEGER,
hospedes INTEGER,
data_saida DATE,
data_entrada DATE,
sub_total DECIMAL(5,2),
id_pac INTEGER,
id_hos INTEGER,
FOREIGN KEY(id_pac) REFERENCES Pacote (id_pac),
FOREIGN KEY(id_hos) REFERENCES Hospedagem (id_hos)
);

CREATE TABLE Aeroporto (
id_aero INTEGER PRIMARY KEY auto_increment,
cnpj_aero VARCHAR(20),
nome_aero VARCHAR(100),
id_local INTEGER,
FOREIGN KEY(id_local) REFERENCES Local (id_local)
);

CREATE TABLE Companhia (
id_com INTEGER PRIMARY KEY auto_increment,
cnpj_com VARCHAR(20),
nome_com VARCHAR(100)
);

CREATE TABLE voo (
id_voo INTEGER PRIMARY KEY auto_increment,
id_aero_part INTEGER,
data_voo DATE,
hor_voo VARCHAR(10),
assentos INTEGER,
preco_base DECIMAL(5,2),
id_aero_dest INTEGER,
FOREIGN KEY(id_aero_part) REFERENCES Aeroporto (id_aero),
FOREIGN KEY(id_aero_dest) REFERENCES Aeroporto (id_aero)
);

ALTER TABLE Passagem ADD FOREIGN KEY(id_voo) REFERENCES voo (id_voo);
ALTER TABLE Passagem ADD FOREIGN KEY(id_pac) REFERENCES Pacote (id_pac);
ALTER TABLE Passagem ADD FOREIGN KEY(id_com) REFERENCES Companhia (id_com);
ALTER TABLE Pacote ADD FOREIGN KEY(id_cli) REFERENCES Cliente (id_cli);

create view hospedagem_local as
select 
id_hos,
cnpj_hos,
nome_hos,
tipo_hos,
preco_dia,
l.*
from hospedagem h, local l 
where h.id_local = l.id_local
order by id_hos asc;

create view aeroporto_local as
select 
id_aero,
cnpj_aero,
nome_aero,
l.*
from aeroporto a, local l 
where a.id_local = l.id_local
order by id_aero asc;

create view reserva_hospedagem_pacote as
select
id_res,
quartos,
hospedes,
data_saida,
data_entrada,
sub_total,
h.*,
p.*
from reserva r, hospedagem h, pacote p
where r.id_hos = h.id_hos and r.id_pac = p.id_pac
order by id_res asc;

create view voo_aero as
select
id_voo,
data_voo,
hor_voo,
assentos,
preco_base,
a.id_aero as id_aero_p,
a.cnpj_aero as cnpj_aero_p,
a.id_local as id_local_p,
a.nome_aero as nome_aero_p,
c.cidade as cidade_p,
c.uf as uf_p,
b.*,
d.cidade as cidade,
d.uf as uf
from voo v, aeroporto a, aeroporto b, local c, local d
where v.id_aero_part = a.id_aero and v.id_aero_dest = b.id_aero and a.id_local = c.id_local and b.id_local = d.id_local
order by id_voo asc;

select * from voo v, aeroporto a
where v.id_aero_part = a.id_aero and v.id_aero_dest = a.id_aero;

create view cliente_local as
select
id_cli,
cpf_cli,
nome_cli,
data_nasc,
tel_cli,
senha,
email,
logradouro,
l.*
from cliente c, local l
where c.id_local = l.id_local
order by id_cli asc;
