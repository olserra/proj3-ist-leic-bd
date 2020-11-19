-- REGIAO
insert into regiao values (1, 'Norte', 1000000);
insert into regiao values (2, 'Centro', 1000000);
insert into regiao values (3, 'Lisboa', 4000000);
insert into regiao values (4, 'Alentejo', 300000);
insert into regiao values (5, 'Algarve', 500000);

-- CONSELHO
insert into concelho values (1, 3, 'Albergaria-a-Nova', 12000);
insert into concelho values (2, 1, 'Albergaria-a-Velha', 2000);
insert into concelho values (3, 4, 'Anadia', 4000);
insert into concelho values (4, 5, 'Arouca', 2000);
insert into concelho values (5, 3, 'Aveiro', 552000);
insert into concelho values (6, 1, 'Castelo de Paiva', 2000);
insert into concelho values (7, 2, 'Espinho', 2000);
insert into concelho values (8, 1, 'Estarreja', 5000);
insert into concelho values (9, 2, 'Ilhavo', 2000);
insert into concelho values (10, 3, 'Mealhada', 2000);
insert into concelho values (11, 4, 'Murtosa', 1000);
insert into concelho values (12, 5, 'Oliveira de Azemeis', 2000);
insert into concelho values (13, 4, 'Oliveira do Bairro', 2000);
insert into concelho values (14, 3, 'Ovar', 52000);
insert into concelho values (15, 2, 'Santa Maria da Feira', 44000);
insert into concelho values (16, 1, 'Sao Joao da Madeira', 2000);
insert into concelho values (17, 2, 'Sever do Vouga', 24000);
insert into concelho values (18, 3, 'Vagos', 9000);
insert into concelho values (19, 4, 'Vale de Cambra', 32000);
insert into concelho values (20, 5, 'Aljustrel', 500);
insert into concelho values (21, 4, 'Almodovar', 2000);
insert into concelho values (22, 3, 'Alvito', 2000);
insert into concelho values (23, 2, 'Barrancos', 2000);
insert into concelho values (24, 1, 'Beja', 2000);
insert into concelho values (25, 3, 'Castro Verde', 2000);
insert into concelho values (26, 4, 'Cuba', 3000);
insert into concelho values (27, 5, 'Ferreira do Alentejo', 2000);
insert into concelho values (28, 1, 'Mertola', 2000);
insert into concelho values (29, 2, 'Moura', 1000);
insert into concelho values (30, 4, 'Odemira', 4000);
insert into concelho values (31, 4, 'Ourique', 6000);
insert into concelho values (32, 2, 'Serpa', 200);
insert into concelho values (33, 1, 'Vidigueira', 20000);
insert into concelho values (34, 2, 'Amares', 100);
insert into concelho values (35, 4, 'Barcelos', 300);
insert into concelho values (36, 5, 'Braga', 12000);
insert into concelho values (37, 2, 'Cabeceiras de Basto', 2000);
insert into concelho values (38, 2, 'Celorico de Basto', 2000);
insert into concelho values (39, 1, 'Esposende', 2000);
insert into concelho values (40, 1, 'Fafe', 2000);
insert into concelho values (41, 2, 'Guimaraes', 2000);
insert into concelho values (42, 3, 'Povoa de Lanhoso', 2000);
insert into concelho values (43, 4, 'Terras de Bouro', 2000);
insert into concelho values (44, 5, 'Vieira do Minho', 2000);
insert into concelho values (45, 2, 'Vila Nova de Famalicao', 2000);


insert into instituicao values (45, 2, 'Cuidados 24H', 'Farmacia');
insert into instituicao values (3, 4, 'Farmacia do Largo do Rato', 'Farmacia');
insert into instituicao values (38, 2, 'Farmarcia Sao Mamede', 'Farmacia');
insert into instituicao values (27, 5, 'Clini Labs', 'Laboratorio');
insert into instituicao values (34, 2, 'Multi Labs', 'Laboratorio');
insert into instituicao values (17, 2, 'Covid Labs', 'Laboratorio');
insert into instituicao values (5, 3, 'Clinica de estetica', 'Clinica');
insert into instituicao values (21, 4, 'Clinica do coracao', 'Clinica');
insert into instituicao values (45, 2, 'Clinica da mama', 'Clinica');
insert into instituicao values (6, 1, 'Lusiadas', 'Hospital');
insert into instituicao values (15, 2, 'Hospital da Luz', 'Hospital');
insert into instituicao values (20, 5, 'Sao Jose', 'Hospital');
insert into instituicao values (9, 2, 'Santa Maria', 'Hospital');
insert into instituicao values (25, 3, 'Sao Francisco Xavier', 'Hospital');


insert into medico values (1, 'Mario',	'Clinico');
insert into medico values (2, 'Pedro',	'Cirurgiao');
insert into medico values (3, 'Maria',	'Pediatra');
insert into medico values (4, 'Ines',	'Obstetra');
insert into medico values (5, 'Paula',	'Psiquiatra');
insert into medico values (6, 'Carlos', 'Cardiologista');


insert into consulta values (1, 2, '21JAN20', 'Lusiadas');
insert into consulta values (2, 1, '11FEB20', 'Sao Jose');
insert into consulta values (3, 2, '10JAN20', 'Santa Maria');
insert into consulta values (4, 2, '28MAR20', 'Lusiadas');
insert into consulta values (1, 3, '13NOV20', 'Sao Francisco Xavier');
insert into consulta values (4, 4, '23JUL20', 'Lusiadas');
insert into consulta values (1, 2, '21MAR20', 'Lusiadas');
insert into consulta values (2, 1, '11JUN20', 'Sao Jose');
insert into consulta values (3, 2, '10APR20', 'Santa Maria');
insert into consulta values (4, 2, '20NOV20', 'Lusiadas');
insert into consulta values (1, 3, '13OCT20', 'Sao Francisco Xavier');
insert into consulta values (4, 4, '02JUL20', 'Lusiadas');  


insert into prescricao values (1, 2, '21JAN20', 'Vitamina C', 2);
insert into prescricao values (2, 1, '11JUN20', 'Vitamina B', 3);
insert into prescricao values (3, 2, '10JAN20', 'Vitamina A', 10);
insert into prescricao values (4, 2, '28MAR20', 'Adrenalina', 3);
insert into prescricao values (1, 3, '13NOV20', 'Dopamina', 9);
insert into prescricao values (4, 4, '23JUL20', 'Paracetamol', 8);
insert into prescricao values (1, 2, '21MAR20', 'Vitamina C', 5);
insert into prescricao values (2, 1, '11JUN20', 'Dopamina', 8);
insert into prescricao values (3, 2, '10APR20', 'Vitamina A', 2);
insert into prescricao values (4, 2, '20NOV20', 'Paracetamol', 6);
insert into prescricao values (1, 3, '13OCT20', 'Vitamina B', 9);
insert into prescricao values (4, 4, '02JUL20', 'Paracetamol', 1);  


insert into analise values (1, 'Hemograma', 1, 2, '21JAN20', '22JAN20', 'Teste1', 41, 'Farmarcia Sao Mamede');
insert into analise values (2, 'Radiografia', 2, 1, '11JUN20', '12JUN20', 'Teste2', 39, 'Clinica do coracao');
insert into analise values (3, 'Covid-19', 3, 2, '10JAN20', '11JAN20', 'Teste3', 10, 'Cuidados 24H');
insert into analise values (4, 'Gravidez', 4, 2, '28MAR20', '29MAR20', 'Teste4', 30, 'Clinica de estetica');
insert into analise values (5, 'Ressonancia', 1, 3, '13NOV20', '14NOV20', 'Teste5', 23, 'Clinica de estetica');
insert into analise values (6, 'Radiografia', 4, 4, '23JUL20', '24JUL20', 'Teste6', 80, 'Clinica do coracao'); 


insert into venda_farmacia values (1, '22JAN20', 'Vitamina C', 10, 30, 'Cuidados 24H');
insert into venda_farmacia values (2, '22JAN20', 'Vitamina A', 10, 30, 'Clinica de estetica');
insert into venda_farmacia values (3, '22JAN20', 'Vitamina B', 10, 30, 'Clinica do coracao');
insert into venda_farmacia values (4, '12JUN20', 'Adrenalina', 10, 30, 'Farmarcia Sao Mamede');
insert into venda_farmacia values (5, '12JUN20', 'Dopamina', 10, 30, 'Clinica de estetica');
insert into venda_farmacia values (6, '12JUN20', 'Paracetamol', 10, 30, 'Cuidados 24H');
insert into venda_farmacia values (7, '11JAN20', 'Vitamina C', 10, 30, 'Farmarcia Sao Mamede');
insert into venda_farmacia values (8, '11JAN20', 'Dopamina', 10, 30, 'Clinica do coracao');
insert into venda_farmacia values (9, '14NOV20', 'Vitamina A', 10, 30, 'Clinica de estetica');
insert into venda_farmacia values (10, '24JUL20', 'Vitamina C', 10, 30, 'Cuidados 24H');
insert into venda_farmacia values (11, '24JUL20', 'Vitamina C', 10, 30, 'Clinica de estetica');


insert into prescricao_venda values (1, 2, '21JAN20', 'Vitamina C', 1);
insert into prescricao_venda values (2, 1, '11JUN20', 'Vitamina B', 2);
insert into prescricao_venda values (3, 2, '10JAN20', 'Vitamina A', 3);
insert into prescricao_venda values (4, 2, '28MAR20', 'Adrenalina', 4);
insert into prescricao_venda values (1, 3, '13NOV20', 'Dopamina', 5);
insert into prescricao_venda values (4, 4, '23JUL20', 'Paracetamol', 6);
insert into prescricao_venda values (1, 2, '21MAR20', 'Vitamina C', 7);
insert into prescricao_venda values (2, 1, '11JUN20', 'Dopamina', 8);
insert into prescricao_venda values (3, 2, '10APR20', 'Vitamina A', 9);
insert into prescricao_venda values (4, 2, '20NOV20', 'Paracetamol', 10);
insert into prescricao_venda values (1, 3, '13OCT20', 'Vitamina B', 11);
