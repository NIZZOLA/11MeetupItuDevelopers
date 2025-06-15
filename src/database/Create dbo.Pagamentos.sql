USE [BackOffice.Data]
GO

/****** Object: Table [dbo].[Pagamentos] Script Date: 15/06/2025 18:18:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pagamentos] (
    [Id]         INT             IDENTITY (1, 1) NOT NULL,
    [PedidoId]   INT             NOT NULL,
    [Valor]      DECIMAL (18, 2) NOT NULL,
    [Vencimento] DATETIME2 (7)   NOT NULL,
    [Pagamento]  DATETIME2 (7)   NULL,
    [ValorPago]  DECIMAL (18, 2) NULL,
    [CreateDate] DATETIME2 (7)   NULL,
    [UpdateDate] DATETIME2 (7)   NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_Pagamentos_PedidoId]
    ON [dbo].[Pagamentos]([PedidoId] ASC);


GO
ALTER TABLE [dbo].[Pagamentos]
    ADD CONSTRAINT [PK_Pagamentos] PRIMARY KEY CLUSTERED ([Id] ASC);


GO
ALTER TABLE [dbo].[Pagamentos]
    ADD CONSTRAINT [FK_Pagamentos_Pedidos_PedidoId] FOREIGN KEY ([PedidoId]) REFERENCES [dbo].[Pedidos] ([Id]) ON DELETE CASCADE;


