drop table regiao cascade;
drop table concelho cascade;
drop table instituicao cascade;
drop table medico cascade;
drop table consulta cascade;
drop table prescricao cascade;
drop table analise cascade;
drop table venda_farmacia cascade;
drop table prescricao_venda cascade;

create table regiao
   (num_regiao SERIAL not null unique,
    nome varchar(255) not null,
    num_habitantes SERIAL not null,
    constraint pk_regiao primary key(num_regiao));

create table concelho 
   (num_concelho SERIAL,
    num_regiao SERIAL,
    nome varchar(20), 
    num_habitantes SERIAL,
    constraint pk_concelho primary key(num_concelho, num_regiao),
    constraint fk_concelho_regiao foreign key(num_regiao) references regiao(num_regiao));

create table instituicao 
   (num_concelho SERIAL,
    num_regiao SERIAL,
    nome varchar(20), 
    tipo varchar(20),
    constraint pk_instituicao primary key(nome),
    constraint fk_instituicao_concelho foreign key(num_concelho, num_regiao) references concelho(num_regiao, num_concelho));


create table medico
   (num_cedula SERIAL, 
    nome varchar(20), 
    especialidade varchar(20),
    constraint pk_medico primary key(num_cedula));

create table consulta
   (num_cedula SERIAL,
    num_doente SERIAL,
    data date,
    nome_instituicao VARCHAR(30),
    constraint pk_consulta primary key(num_cedula, num_doente, data),
    constraint fk_consulta_instituicao foreign key(nome_instituicao) references instituicao(nome),
    constraint fk_consulta_medico foreign key(num_cedula) references medico(num_cedula));

create table prescricao 
   (num_cedula SERIAL, 
    num_doente SERIAL, 
    data date, 
    substancia varchar(30),
    quant SERIAL,
    constraint pk_prescricao primary key(num_cedula, num_doente, data, substancia),
    constraint fk_prescricao_consulta foreign key (num_cedula, num_doente, data) references consulta(num_cedula, num_doente, data));

create table analise 
   (num_analise SERIAL, 
    especialidade varchar(20), 
    num_cedula SERIAL, 
    num_doente SERIAL, 
    data date, 
    data_registo date, 
    nome varchar(20), 
    quant SERIAL, 
    inst varchar(20),
    constraint pk_analise primary key(num_analise),
    constraint fk_analise_consulta foreign key(num_cedula, num_doente, data) references consulta(num_cedula, num_doente, data),
    constraint fk_analise_instituicao foreign key(inst) references instituicao(nome));

create table venda_farmacia 
   (num_venda SERIAL,
    data_registo date,
    substancia varchar(20),
    quant SERIAL,
    preco SERIAL,
    inst varchar(20),
    constraint pk_venda_farmacia primary key (num_venda),
    constraint fk_venda_farmacia_instituicao foreign key(inst) references instituicao(nome));

create table prescricao_venda 
   (num_cedula SERIAL,
    num_doente SERIAL,
    data date,
    substancia varchar(30),
    num_venda SERIAL,
    constraint pk_prescricao_venda primary key(num_doente, data, substancia, num_venda),
    constraint fk_prescricao_venda_venda_farmacia foreign key(num_venda) references venda_farmacia(num_venda),
    constraint fk_prescricao_venda_venda_farmacia2 foreign key (num_cedula, num_doente, data, substancia) references prescricao(num_cedula, num_doente, data, substancia));






