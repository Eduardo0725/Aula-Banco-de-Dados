
--create database Exercicio01;
use Exercicio01;


create table tbl_cod_prod(
	id_prod int not null primary key identity,
	nome varchar(250) not null,
	preco float not null,
	codigo_barra int not null
);

create table tbl_prod_vendido(
	id int not null primary key identity,
	id_venda int not null,
	id_prod int not null,
	qtd int not null
);

create table tbl_venda(
	id int not null primary key identity,
	data date not null,
	id_cli int not null,
	valor float not null,
);

create table tbl_cliente(
	id int not null primary key identity,
	nome varchar(250) not null,
	sobrenome varchar(250) not null,
	funcionario int not null
);





alter table tbl_prod_vendido add constraint fk_venda foreign key (id_venda) references tbl_venda(id);

alter table tbl_venda add constraint fk_cliente foreign key (id_cli) references tbl_cliente(id);

alter table tbl_prod_vendido add constraint fk_prod foreign key (id_prod) references tbl_cod_prod(id_prod);


/*
select * from tbl_cliente;

select * from tbl_venda;

select * from tbl_cod_prod;

select * from tbl_prod_vendido;
*/

-----------------------------------------------------------
--Cadastrar cliente
insert into tbl_cliente (nome, sobrenome, funcionario) values ('Maria','Fernanda',1);
insert into tbl_cliente (nome, sobrenome, funcionario) values ('Eduardo','Andrade',1);
insert into tbl_cliente (nome, sobrenome, funcionario) values ('Ana','Julia',0);
insert into tbl_cliente (nome, sobrenome, funcionario) values ('Daniel','Santos',0);
insert into tbl_cliente (nome, sobrenome, funcionario) values ('Diogo','Silva',0);


--Cadastrar venda
insert into tbl_venda (id_cli, data, valor) values (1,'2020-03-06',4.50);
insert into tbl_venda (id_cli, data, valor) values (1,'2020-03-06',25.00);
insert into tbl_venda (id_cli, data, valor) values (5,'2020-03-06',12.50);
insert into tbl_venda (id_cli, data, valor) values (2,'2020-03-06',10.00);
insert into tbl_venda (id_cli, data, valor) values (4,'2020-03-06',12.50);
insert into tbl_venda (id_cli, data, valor) values (3,'2020-03-06',15.00);


--Cadastrar produto
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Barra de Chocolate', 4.50, 00000001);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Vinagre', 12.50, 00000002);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Sopa', 10.00, 00000003);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Cereal', 7.50, 00000004);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Barra de Cereal', 1.00, 00000005);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Macarrão', 5.00, 00000006);
insert into tbl_cod_prod (nome, preco, codigo_barra) values ('Bala de Iogurte', 0.05, 00000007);


--Cadastrar produto vendido
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (1,1,1);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (2,2,2);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (3,4,1);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (3,6,1);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (4,6,2);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (5,2,1);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (6,2,1);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (6,7,10);
insert into tbl_prod_vendido (id_venda, id_prod, qtd) values (6,5,2);


select * from tbl_cliente;
select * from tbl_venda;
select * from tbl_cod_prod;
select * from tbl_prod_vendido;
