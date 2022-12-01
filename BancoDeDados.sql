CREATE TABLE Cliente( 
id serial, 
Nome varchar(50) not null, 
Sobrenome varchar(50) not null, 
Sexo char(1) not null, 
PRIMARY KEY(id) ); 
 
CREATE TABLE Academia ( 
Cod_Academia int PRIMARY KEY,
Endereço varchar(30),
Nome varchar(255)); 
 
CREATE TABLE Treino ( 
ISBN char PRIMARY KEY,
Titulo varchar(30)not null,
Ano date, Preço Money,
Nome_Personals varchar(30),
Nome_Gerente varchar(30)); 
 
--criação de relacionamentos 
 
ALTER TABLE Treino 
ADD CONSTRAINT fk_Academia_id 
FOREIGN KEY (Academia_id) 
REFERENCES Academia(id); 
--inserção de dados 
 
INSERT Academia 
(descricao,tipo) 
VALUES 
('SetorAdolescente','A'), 
('SetorAdolescente','A'), 
('SetorAdulto','B'), 
('SetorIdoso','B'); 
 
INSERT Treino 
(Academia_id,nome) 
VALUES 
(1,'TreinoDeSuperior'), 
(2,'TreinoDeInferior') 
 
select * from Academia; select * from Treino; 
 

