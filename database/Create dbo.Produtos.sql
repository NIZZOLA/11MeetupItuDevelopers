USE [BackOffice.Data]
GO

/****** Object: Table [dbo].[Produtos] Script Date: 15/06/2025 18:18:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Produtos] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [Descricao]  NVARCHAR (60)   NOT NULL,
    [Valor]      DECIMAL (18, 2) NOT NULL,
    [CreateDate] DATETIME2 (7)   NULL,
    [UpdateDate] DATETIME2 (7)   NULL,
    [Estoque]    DECIMAL (12)    NULL
);


-- Script para inserir 15 produtos de construção na tabela Produtos
-- A chave primária (Id) é automática e não precisa ser especificada

INSERT INTO [dbo].[Produtos] ([Descricao], [Valor], [CreateDate], [UpdateDate], [Estoque])
VALUES
    ('Cimento CP II 50kg', 32.90, GETDATE(), NULL, 500),
    ('Tijolo Cerâmico 8 furos', 1.20, GETDATE(), NULL, 10000),
    ('Areia Média m³', 85.00, GETDATE(), NULL, 200),
    ('Brita 1 m³', 120.00, GETDATE(), NULL, 150),
    ('Tubo PVC 100mm 6m', 45.80, GETDATE(), NULL, 300),
    ('Argamassa AC III 20kg', 18.50, GETDATE(), NULL, 400),
    ('Telha Cerâmica', 3.75, GETDATE(), NULL, 5000),
    ('Ferro 10mm 12m', 42.30, GETDATE(), NULL, 250),
    ('Tinta Acrílica Branca 18L', 189.90, GETDATE(), NULL, 80),
    ('Piso Cerâmico 60x60cm', 29.99, GETDATE(), NULL, 1200),
    ('Porta de Madeira Standard', 320.00, GETDATE(), NULL, 50),
    ('Janela de Alumínio 1,20x1,20', 450.00, GETDATE(), NULL, 30),
    ('Caixa d''Água 1000L', 650.00, GETDATE(), NULL, 25),
    ('Massa Corrida 20kg', 56.40, GETDATE(), NULL, 150),
    ('Fio Elétrico 2,5mm 100m', 125.00, GETDATE(), NULL, 60);

-- Verificação dos dados inseridos
SELECT * FROM [dbo].[Produtos];