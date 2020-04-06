-- Criar base de dados
CREATE DATABASE BasePokedex;
GO

USE BasePokedex;
GO

-- Criar estrutura das tabelas de domínio
CREATE TABLE TipoDominio
(
    CodTipo         SMALLINT        NOT NULL,
    NomTipo         VARCHAR(20)     NOT NULL
);
GO

ALTER TABLE TipoDominio
ADD CONSTRAINT PK_TipoDominio PRIMARY KEY (CodTipo);
GO

CREATE TABLE StatusDominio
(
    CodStatus       SMALLINT        NOT NULL,
    NomStatus       VARCHAR(20)     NOT NULL,
    ValDano         INT             NULL    ,
    NumTurnos       SMALLINT        NULL
);
GO

ALTER TABLE StatusDominio
ADD CONSTRAINT PK_StatusDominio PRIMARY KEY (CodStatus);
GO

CREATE TABLE AtributoDominio
(
    CodAtributo     SMALLINT        NOT NULL,
    NomAtributo     VARCHAR(20)     NOT NULL
);
GO

ALTER TABLE AtributoDominio
ADD CONSTRAINT PK_AtributoDominio PRIMARY KEY (CodAtributo);
GO

CREATE TABLE AlvoEfeitoDominio
(
    CodAlvoEfeito   SMALLINT        NOT NULL,
    NomAlvoEfeito   VARCHAR(20)     NOT NULL
);
GO

ALTER TABLE AlvoEfeitoDominio
ADD CONSTRAINT PK_AlvoEfeitoDominio PRIMARY KEY (CodAlvoEfeito);
GO

-- Criar estrutura das entidades
CREATE TABLE Pokemon
(
    NumPokemon      INT             NOT NULL,
    NomPokemon      VARCHAR(20)     NOT NULL,
    DescPokemon     VARCHAR(280)    NULL    ,
    NumGeracao      SMALLINT        NULL    ,
    CodTipo         SMALLINT        NOT NULL
);
GO

ALTER TABLE Pokemon
ADD CONSTRAINT PK_Pokemon PRIMARY KEY (NumPokemon);
GO

