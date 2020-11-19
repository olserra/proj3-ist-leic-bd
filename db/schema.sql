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
   (num_regiao integer not null unique,
    nome varchar(255) not null,
    num_habitantes integer not null,
    constraint pk_regiao primary key(num_regiao));

create table concelho 
   (num_concelho integer,
    num_regiao integer,
    nome varchar(255), 
    num_habitantes integer,
    constraint pk_concelho primary key(num_concelho, num_regiao),
    constraint fk_concelho_regiao foreign key(num_regiao) references regiao(num_regiao));

create table instituicao 
   (num_concelho integer,
    num_regiao integer,
    nome varchar(255), 
    tipo varchar(255),
    constraint pk_instituicao primary key(nome),
    constraint fk_instituicao_concelho foreign key(num_concelho, num_regiao) references concelho(num_concelho, num_regiao));


create table medico
   (num_cedula integer, 
    nome varchar(255), 
    especialidade varchar(255),
    constraint pk_medico primary key(num_cedula));

create table consulta
   (num_cedula integer,
    num_doente integer,
    data date,
    nome_instituicao varchar(255),
    constraint pk_consulta primary key(num_cedula, num_doente, data),
    constraint fk_consulta_instituicao foreign key(nome_instituicao) references instituicao(nome),
    constraint fk_consulta_medico foreign key(num_cedula) references medico(num_cedula));

create table prescricao 
   (num_cedula integer, 
    num_doente integer, 
    data date, 
    substancia varchar(255),
    quant integer,
    constraint pk_prescricao primary key(num_cedula, num_doente, data, substancia),
    constraint fk_prescricao_consulta foreign key (num_cedula, num_doente, data) references consulta(num_cedula, num_doente, data));

create table analise 
   (num_analise integer, 
    especialidade varchar(255), 
    num_cedula integer, 
    num_doente integer, 
    data date, 
    data_registo date, 
    nome varchar(255), 
    quant integer, 
    inst varchar(255),
    constraint pk_analise primary key(num_analise),
    constraint fk_analise_consulta foreign key(num_cedula, num_doente, data) references consulta(num_cedula, num_doente, data),
    constraint fk_analise_instituicao foreign key(inst) references instituicao(nome));

create table venda_farmacia 
   (num_venda integer,
    data_registo date,
    substancia varchar(255),
    quant integer,
    preco integer,
    inst varchar(255),
    constraint pk_venda_farmacia primary key (num_venda),
    constraint fk_venda_farmacia_instituicao foreign key(inst) references instituicao(nome));

create table prescricao_venda 
   (num_cedula integer,
    num_doente integer,
    data date,
    substancia varchar(255),
    num_venda integer,
    constraint pk_prescricao_venda primary key(num_doente, data, substancia, num_venda),
    constraint fk_prescricao_venda_venda_farmacia foreign key(num_venda) references venda_farmacia(num_venda),
    constraint fk_prescricao_venda_venda_farmacia2 foreign key (num_cedula, num_doente, data, substancia) references prescricao(num_cedula, num_doente, data, substancia));






