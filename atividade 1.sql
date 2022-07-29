create database db_rh_servicos;

use db_rh_servicos;

create table tb_colaboradores(
id bigint auto_increment,
nome varchar(255),
idade int,
cargo varchar(255),
salario double,
genero varchar(255),
primary key (id)
);



insert into tb_colaboradores (nome,idade,cargo,salario,genero) values (
'maria',
33,
'Logista',
8000,
'Feminino'
);

insert into tb_colaboradores (nome,idade,cargo,salario,genero) values (
'Freud',
22,
'Vendedora',
10000,
'Masculino'
);

insert into tb_colaboradores (nome,idade,cargo,salario,genero) values (
'Alfred',
45,
'Gerente de contas',
1500,
'Masculino'
);

insert into tb_colaboradores (nome,idade,cargo,salario,genero) values (
'Bernado',
67,
'Balconista',
1800,
'feminino'
);

insert into tb_colaboradores (nome,idade,cargo,salario,genero) values (
'roberta',
88,
'CEO',
50000,
'Feminino'
);

delete from tb_colaboradores where id = 1;
delete from tb_colaboradores where id = 2;
delete from tb_colaboradores where id = 3;
delete from tb_colaboradores where id = 4;

select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 10250 where id = 8;