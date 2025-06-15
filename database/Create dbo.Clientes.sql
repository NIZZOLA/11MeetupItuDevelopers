USE [BackOffice.Data]
GO

/****** Object: Table [dbo].[Clientes] Script Date: 15/06/2025 18:18:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Clientes] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Nome]       NVARCHAR (60) NOT NULL,
    [Cpf]        NVARCHAR (18) NOT NULL,
    [Email]      NVARCHAR (80) NOT NULL,
    [Celular]    NVARCHAR (15) NOT NULL,
    [CreateDate] DATETIME2 (7) NULL,
    [UpdateDate] DATETIME2 (7) NULL
);

-- Script para inserir 10 clientes com dados fake baseados no universo Star Wars
-- A chave primária (Id) é automática e não precisa ser especificada

INSERT INTO [dbo].[Clientes] ([Nome], [Cpf], [Email], [Celular], [CreateDate], [UpdateDate])
VALUES
    ('Luke Skywalker', '123.456.789-01', 'luke.skywalker@tatooine.com', '(11) 91234-5678', GETDATE(), NULL),
    ('Leia Organa', '234.567.890-12', 'princess.leia@alderaan.gov', '(11) 92345-6789', GETDATE(), NULL),
    ('Han Solo', '345.678.901-23', 'han.solo@millenniumfalcon.com', '(11) 93456-7890', GETDATE(), NULL),
    ('Darth Vader', '456.789.012-34', 'anakin@empire.gov', '(11) 94567-8901', GETDATE(), NULL),
    ('Obi-Wan Kenobi', '567.890.123-45', 'obiwan@jediorder.org', '(11) 95678-9012', GETDATE(), NULL),
    ('Yoda', '678.901.234-56', 'master.yoda@dagobah.sw', '(11) 96789-0123', GETDATE(), NULL),
    ('Chewbacca', '789.012.345-67', 'chewie@kashyyyk.wn', '(11) 97890-1234', GETDATE(), NULL),
    ('R2-D2', '890.123.456-78', 'r2d2@astromech.droid', '(11) 98901-2345', GETDATE(), NULL),
    ('C-3PO', '901.234.567-89', 'c3po@protocol.droid', '(11) 99012-3456', GETDATE(), NULL),
    ('Boba Fett', '012.345.678-90', 'boba.fett@mandalorian.bounty', '(11) 90123-4567', GETDATE(), NULL);

-- Verificação dos dados inseridos
SELECT * FROM [dbo].[Clientes];
