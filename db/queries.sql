/* 1. Qual o concelho onde se fez o maior volume de vendas hoje?
2. Qual o médico que mais prescreveu no 1o semestre de 2019 em cada região?
3. Quais são os médicos que já prescreveram aspirina em receitas aviadas em todas as farmácias
do concelho de Arouca este ano?
4. Quais são os doentes que já fizeram análises mas ainda não aviaram prescrições este mês? */

1) 
select C.nome, max(sum(V.preco))
from conselho C, instituicao I, venda_farmacia V
where C.num_conselho = I.num_conselho 
and I.nome = V.inst


concelho
(​num_concelho, num_regiao​, nome, num_habitantes)
num_regiao:
FK regiao
(num_regiao)
RI-concelho-1: nome = {concelhos de portugal continental}

instituicao
(​nome,​ tipo, num_regiao, num_concelho​) num_regiao,
num_concelho:
FK concelho
(regiao, concelho)

venda_farmacia
(​num_venda​, data_registo, substancia, quant, preco, inst)
inst:
FK instituicao
(nome)