create database POSTO_COMBUSTIVEL;
/*cria??o da tabela pessoa para cadastramento*/
CREATE TABLE CLIENTE(
	CODIGO_PESSOA BIGINT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	NOME VARCHAR(60),
	CPF VARCHAR(11),
	DATA_NASCIMENTO DATE,
	TELEFONE VARCHAR(20),
	TIPO_PESSOA TINYINT, 
	SEXO CHAR(1),
	ENDERECO VARCHAR(150),
	BAIRRO VARCHAR(50),
	CIDADE VARCHAR(50),
	ESTADO VARCHAR(2),
	ATUALIZADO DATETIME,
	CRIADO DATETIME
);

CREATE TABLE COMBUSTIVEL (
	GASOLINA_COMUM MONEY,
	GASOLINA_ADITIVADA MONEY,
	ALCOOL MONEY,
	DIESEL MONEY,
);
CREATE TABLE FINANCEIRO(
	ENTRADA_E_SAIDA CHAR,
)

CREATE TABLE FINANCEIRO(
	CODIGO_PESSOA BIGINT, CONSTRAINT FK_FOREING FOREIGN KEY (CODIGO_PESSOA) REFERENCES CLIENTE(CODIGO_PESSOA),
	RECEBER_E_PAGAR CHAR(1),
	DEBITO_CREDITO CHAR,
	VALOR MONEY,
	TIPO_COMBUSTIVEL VARCHAR(4),
	ESTADO VARCHAR(2),
)


/*-=================================================================================================
primeiro insert na tabela CLIENTE */
INSERT INTO CLIENTE (
	NOME, CPF, DATA_NASCIMENTO, TELEFONE, TIPO_PESSOA,
	SEXO, ENDERECO, BAIRRO, CIDADE, ESTADO,
	ATUALIZADO, CRIADO
) VALUES (
'Yago', '10897286979', '2002-06-26', '49999995594',0,1,'California', 'Centro', 'Vitorino', 'pr',
'20210917 20:40:00.000', '20210917 20:40:00.000'
);


/*-=================================================================================================
 insert na tabela COMBUSTIVEL */
 INSERT INTO COMBUSTIVEL(
	GASOLINA_COMUM, GASOLINA_ADITIVADA, ALCOOL, DIESEL
 )VALUES(
5.50,6.30,4.40,2.50
 );

 INSERT INTO FINANCEIRO(
	RECEBER_E_PAGAR, DEBITO_CREDITO, VALOR, TIPO_COMBUSTIVEL, ESTADO, CRIADO, ATUALIZADO, CODIGO_PESSOA
) VALUES (
	'1', '2', 540.00, 1, 'sc', '20210917 20:40:00.000', '20210917 20:40:00.000', 300
)

-- ====================================== ERROR KEY ============================================== --

INSERT INTO CLIENTE (
	CODIGO_PESSOA ,NOME, CPF, DATA_NASCIMENTO, TELEFONE, TIPO_PESSOA,
	SEXO, ENDERECO, BAIRRO, CIDADE, ESTADO,
	ATUALIZADO, CRIADO
) VALUES (
1, 'Yago', '10897286979', '2002-06-26', '49999995594',0,1,'California', 'Centro', 'Vitorino', 'pr',
'20210917 20:40:00.000', '20210917 20:40:00.000'
);

-- ===================================================== CONDICTION ==================================================== --

UPDATE CLIENTE SET NOME = 'ALGARIO DA SILVA' FROM CLIENTE WHERE ESTADO = 'sc';

alter table FINANCEIRO add CRIADO DATETIME;

alter table FINANCEIRO add ATUALIZADO DATETIME;





-- =============================================== JOINS ========================================= --

SELECT * FROM CLIENTE AS C JOIN FINANCEIRO AS E ON C.ESTADO = E.ESTADO;









 
