create database gerenciamentoProdutos;
use gerenciamentoProdutos;

create table cliente
(
id_cliente integer primary key auto_increment,
nome varchar(100) not null,
email varchar (100) not null,
telefone bigint not null,
cpf bigint not null,
saldo double not null
);

insert into cliente (id_cliente, nome, email, telefone, cpf, saldo)values
(0, "Carolina Neponucena","carolinanepo09@gmail.com",99999-9999,11229681248, 3000.25),
(0, "Natália Bastazini","nataliabasta08@gmail.com",88888-8888,37382369102, 3000.25),
(0, "Luis Becker","beckerluis08@gmail.com",77777-7777,24036794450, 3000.25),
(0, "Paloma Breves","palomavesso123@gmail.com",66666-6666,72332522115, 3000.25),
(0, "Pedro Pedraga","pedropedraga12@gmail.com",55555-5555,18032245251, 3000.25),
(0, "Júlia Silva","juliasilva123@gmail.com",44444-4444,46204218638,1000.25),
(0, "Maria Fernanda","marifernanda08@gmail.com",33333-3333,13727072474, 3000.25),
(0, "Elis Angélica","elisangelica18@gmail.com",22222-2222,32948431000, 3000.25),
(0, "Victoria Del Nero","delnerovic23@gmail.com",11111-1111,40664567231, 3000.25),
(0, "Paula Neponucena","paulaneponucena12@gmail.com",10101-1010,43134227304, 3000.25);

create table produtos
(
id_produtos integer primary key auto_increment,
nome varchar(100) not null,
descricao varchar (1000) not null,
valor double not null,
marca varchar(100) not null,
quantidade numeric not null
);

insert into produtos (id_produtos, nome, descricao, valor,marca,quantidade)values
(0, "Mouse","Mouse essencial para jogos DeathAdder",119.00,"Razer",11),
(0, "Teclado","Gamer Semi Mecânico Multimídia Led",68.80,"Finding",3),
(0, "Monitor","MONITOR VX PRO VX215X",299.99, "Duex",24),
(0, "Headset","Headset Gamer Redragon",349.00,"Redragon",23),
(0, "Fonte de alimentação","Fornecer energia à carga elétrica.",81.06,"Duex",18),
(0, "Gabinete","Protege todos os componentes internos do computador",223.00,"Hayom",8),
(0, "SSD","Armazenamento para computadores e notebooks ",329.99,"SanDisk",13),
(0, "Impressoras","Permite obter uma cópia em papel de dados contidos no computador.",2259.99,"Creality",3),
(0, "Cadeira Gamer","Os apoios de braço, tampas laterais e rodinhas vêm com o logo da ThunderX3 gravada para dar um toque único e exclusivo em sua cadeira.",900.00,"Thunderx3",6),
(0, "Ventoinha","Usado em diversos tipos de hardwares eletrônicos com o objetivo de evitar a sobrecarga de calor que estes componentes geram.",24.99,"Cooler Master",4);

create table pagamentos
(
id_pagamento integer primary key auto_increment,
forma varchar(200) not null,
data_pagamento datetime not null,
cliente_id integer,
foreign key (cliente_id) references cliente (id_cliente)
);
insert into pagamentos (id_pagamento, forma, data_pagamento, cliente_id)values
(0, "Dinheiro",'2023-08-14 10:34:09',1),
(0, "Débito", '2022-06-18 09:30:05',2),
(0, "Crédito",'2023-09-22 08:20:01',3),
(0, "PIX",'2023-05-23 09:10:02',4);

create table pedidos
(
id_pedidos integer primary key auto_increment,
quantidade numeric not null,
valor_total double not null,
produtos_id integer,
foreign key (produtos_id) references produtos (id_produtos),
pagamento_id integer,
foreign key (pagamento_id) references pagamentos (id_pagamento),
cliente_id integer,
foreign key (cliente_id) references cliente (id_cliente)
);

insert into pedidos (id_pedidos, quantidade, valor_total, produtos_id, pagamento_id,cliente_id )values
(0, 1, 119.00, 1, 1,1),
(0, 1, 68.80, 2,1,2 ),
(0, 1, 299.99, 3,1,3),
(0, 1, 349.00, 4,4,4),
(0, 1, 81.06, 5,3,5),
(0, 1, 223.00, 6,2,6),
(0, 1, 329.99, 7,2,7),
(0, 1, 2259.99, 8,3,8),
(0, 1, 900.00, 9,2,9),
(0, 1, 24.99, 10,4,10);