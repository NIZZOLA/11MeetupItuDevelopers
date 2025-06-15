-- Inserção de 20 pedidos com datas aleatórias em 2025 para clientes 7 a 15 e produtos 1 a 20
-- Status: 1 = Pendente, 2 = Processando, 3 = Enviado, 4 = Entregue, 5 = Cancelado

-- Pedido 1
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-01-15 09:30:00', 4, 7, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (1, 3, 2, 85.00, GETDATE(), NULL),
    (1, 5, 1, 45.80, GETDATE(), NULL);

-- Pedido 2
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-02-03 14:15:00', 3, 8, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (2, 1, 10, 32.90, GETDATE(), NULL),
    (2, 12, 1, 450.00, GETDATE(), NULL),
    (2, 18, 5, 120.00, GETDATE(), NULL);

-- Pedido 3
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-02-18 11:00:00', 4, 9, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (3, 7, 100, 3.75, GETDATE(), NULL),
    (3, 9, 2, 189.90, GETDATE(), NULL);

-- Pedido 4
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-03-05 16:45:00', 2, 10, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (4, 2, 500, 1.20, GETDATE(), NULL),
    (4, 4, 3, 120.00, GETDATE(), NULL);

-- Pedido 5
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-03-22 10:30:00', 1, 11, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (5, 6, 5, 18.50, GETDATE(), NULL),
    (5, 14, 10, 56.40, GETDATE(), NULL);

-- Pedido 6
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-04-10 13:20:00', 3, 12, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (6, 8, 8, 42.30, GETDATE(), NULL),
    (6, 15, 2, 125.00, GETDATE(), NULL);

-- Pedido 7
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-05-07 08:45:00', 4, 13, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (7, 10, 25, 29.99, GETDATE(), NULL),
    (7, 16, 1, 320.00, GETDATE(), NULL);

-- Pedido 8
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-05-19 17:30:00', 5, 14, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (8, 11, 2, 650.00, GETDATE(), NULL);

-- Pedido 9
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-06-02 12:00:00', 2, 15, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (9, 13, 1, 450.00, GETDATE(), NULL),
    (9, 17, 3, 85.00, GETDATE(), NULL);

-- Pedido 10
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-06-15 09:15:00', 1, 7, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (10, 19, 4, 18.50, GETDATE(), NULL),
    (10, 20, 2, 125.00, GETDATE(), NULL);

-- Pedido 11
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-07-08 14:50:00', 3, 8, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (11, 1, 15, 32.90, GETDATE(), NULL),
    (11, 3, 1, 85.00, GETDATE(), NULL);

-- Pedido 12
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-07-22 11:30:00', 4, 9, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (12, 5, 3, 45.80, GETDATE(), NULL),
    (12, 7, 50, 3.75, GETDATE(), NULL);

-- Pedido 13
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-08-05 16:20:00', 2, 10, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (13, 9, 1, 189.90, GETDATE(), NULL),
    (13, 11, 1, 650.00, GETDATE(), NULL);

-- Pedido 14
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-08-19 10:00:00', 1, 11, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (14, 13, 2, 450.00, GETDATE(), NULL),
    (14, 15, 1, 125.00, GETDATE(), NULL);

-- Pedido 15
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-09-03 13:45:00', 3, 12, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (15, 2, 200, 1.20, GETDATE(), NULL),
    (15, 4, 2, 120.00, GETDATE(), NULL);

-- Pedido 16
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-09-17 09:30:00', 4, 13, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (16, 6, 8, 18.50, GETDATE(), NULL),
    (16, 8, 5, 42.30, GETDATE(), NULL);

-- Pedido 17
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-10-02 15:10:00', 5, 14, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (17, 10, 10, 29.99, GETDATE(), NULL);

-- Pedido 18
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-10-16 11:20:00', 2, 15, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (18, 12, 1, 450.00, GETDATE(), NULL),
    (18, 14, 5, 56.40, GETDATE(), NULL);

-- Pedido 19
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-11-05 14:00:00', 1, 7, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (19, 16, 1, 320.00, GETDATE(), NULL),
    (19, 18, 3, 120.00, GETDATE(), NULL);

-- Pedido 20
INSERT INTO [dbo].[Pedidos] ([DataDaCompra], [Status], [ClienteId], [CreateDate], [UpdateDate])
VALUES ('2025-11-20 10:45:00', 3, 8, GETDATE(), NULL);

INSERT INTO [dbo].[PedidoItens] ([PedidoId], [ProdutoId], [Quantidade], [Valor], [CreateDate], [UpdateDate])
VALUES 
    (20, 20, 4, 125.00, GETDATE(), NULL),
    (20, 1, 20, 32.90, GETDATE(), NULL);

-- Consulta para verificar os pedidos inseridos
SELECT * FROM [dbo].[Pedidos];
SELECT * FROM [dbo].[PedidoItens];