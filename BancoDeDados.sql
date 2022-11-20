CREATE TABLE CLIENTE(
id serial,
NOME varchar(50) not null,
SOBRENOME varchar(50) not null,
SEXO char(1) not null,
primary key(id)
);

CREATE TABLE Academia
(
id INT PRIMARY KEY IDENTITY(1,1),
descricao VARCHAR (50),
tipo VARCHAR(2)
);

CREATE TABLE treino
(
id INT PRIMARY KEY IDENTITY(1,1),
categoria_id INT,
nome VARCHAR(100)
);

--criação de relacionamentos

ALTER TABLE Treino
ADD CONSTRAINT fk_Academia_id
FOREIGN KEY (Academia_id)
REFERENCES Academia(id);

--inserção de dados

INSERT Academia
(descricao,tipo)
VALUES
('SetorInfantil','A'),
('SetorAdolescente','A'),
('SetorAdulto','B'),
('SetorAdulto+','B');

INSERT Treino
(Academia_id,nome)
VALUES
(1,'TreinoDeSuperior'),
(2,'TreinoDeInferior')



select * from Academia;
select * from Treino;
