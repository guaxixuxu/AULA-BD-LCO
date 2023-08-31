show tables;
use DB_MUITO_FODA;
CREATE DATABASE DB_MUITO_FODA;
#SELECT * FROM DB_MUITO_FODA;
CREATE TABLE NOMES_MUITO_FODAS (
ID INT,
NOMES VARCHAR(255),
SOBRE_NOMES VARCHAR(255)
);

SELECT * FROM NOMES_MUITO_FODAS;

ALTER TABLE NOMES_MUITO_FODAS SET CPF VARCHAR(18)

ALTER TABLE NOMES_MUITO_FODAS MODIFY COLUMN CPF VARCHAR(18);


DELETE FROM NOMES_MUITO_FODAS WHERE ID = 2;

INSERT INTO NOMES_MUITO_FODAS (NOMES, SOBRE_NOMES)
VALUES ('OSIRIS','SAINT-14');

UPDATE NOMES_MUITO_FODAS
SET NOMES = 'Osiris'
WHERE ID = 1;

CREATE TABLE CRIMINOSOS(
ID INT AUTO_INCREMENT,
CRIME VARCHAR(64),
PENA VARCHAR(64),
primary key (ID)
);

INSERT INTO CRIMINOSOS(CRIME, PENA) VALUES ('ATENTADO AO PUDOR','6 MESES PRISAO DOMICILIAR');

CREATE TABLE CULPADOS (
CPF_CULPADO VARCHAR(16),
RC_PASSAGEM INT(255),
NOME VARCHAR(32),
ID INT(255),
PRIMARY KEY(ID),
FOREIGN KEY(ID) REFERENCES NOMES_MUITO_FODAS(ID)
#O MUITOS VAI TER CHAVE VIRADA PRA UM
);

SELECT * FROM CULPADOS;
