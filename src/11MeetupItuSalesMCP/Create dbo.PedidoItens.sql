select 
	pd.id codpedido,
	pd.DataDaCompra,
	cli.Nome NomeDoCliente,
	cli.id CodigoDoCliente,
    pro.id CodigoDoProduto,
	pro.Descricao,
	pi.Quantidade,
	pi.Valor ValorUnitario
	
    from pedidos pd
	left join pedidoitens pi on pi.PedidoId = pd.Id
	left join clientes cli on cli.Id = pd.ClienteId
	left join produtos pro on pro.Id = pi.ProdutoId
