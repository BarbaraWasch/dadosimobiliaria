drop database if exists Imobiliaria;
create database Imobiliaria;
use Imobiliaria;
create table imobiliaria.Condominio(
	idCondominio int,
    sigla varchar(45) not null,
    come varchar(45),
    sindico varchar(45),
    telefone varchar(45),
    enderecoLogradouro varchar(45),
    enderecoBairro varchar(45),
    enderecoNumero varchar(45),
    primary key (idCondominio)
);

create table Imobiliaria.Cliente(
	idCliente int primary key,
    nome varchar(45),
    cpf varchar(11)
);

create table Imobiliaria.Contrato(
	idContrato int,
    dataInicio date,
    dataTermino date,
    valor decimal(8,2),
    numero int,
    daiVencimento int,
    idCliente int,
    primary key(idContrato),
    foreign key (idCliente) references Imobiliaria.Cliente(idCliente)
);

create table imobiliaria.Loja(
	idLoja int,
    numero int,
    metragem decimal(6,2),
    descricao varchar(120),
    idCondominio int,
    idContrato int,
    primary key(idLoja,Idcondominio),
    foreign key(idCondominio) references Condominio(idCondominio),
    foreign key(idContrato) references Contrato(idContrato)
);

create table Imobiliaria.Boleto(
	idBoleto int,
    dataPagamento datetime,
    valor decimal(8,2),
    dataVencimento date,
    mesReferencia varchar(10),
    codBrras varchar(45),
    idContrato int,
    primary key(idBoleto),
    foreign key(idContrato) references Contrato(idContrato)
);

insert into imobiliaria.Condominio values
	(1,"CL", "Shopping legal", "Renato Lopes", "4199999999", "Rua da paz",
    "Centro", "35");
    
insert into imobiliaria.Condominio(idCondominio, sigla, nome) values
     (2, "SML", "Shoping muito legal" );
     
insert into imobiliaria.Condominio(idCondominio, sigla, nome) values
     (3, "SHL", "Shoping hyper legal" ),
     (4, "SUL", "Shoping ultra legal" );
     
insert into imobiliaria.Cliente values
     (3, "john snow", "77159826859");
     
insert into Imobiliaria.Contrato(idContrato, valor) values
     (1,500.00);
     
