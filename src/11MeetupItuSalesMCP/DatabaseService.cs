using SalesMCP.Models;
using Microsoft.Data.SqlClient;
using SalesMCP.Contracts;

namespace SalesMCP;

public class DatabaseService
{
    private readonly string _connectionString;

    public DatabaseService(string connectionString)
    {
        _connectionString = connectionString ?? throw new ArgumentNullException(nameof(connectionString));
    }
    public List<Produto> BuscarProdutosPorDescricao(string descricao)
    {
        var produtos = new List<Produto>();

        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand(
                "SELECT Id, Descricao, Valor, CreateDate, UpdateDate, Estoque " +
                "FROM Produtos " +
                "WHERE Descricao LIKE @descricao " +
                "ORDER BY Descricao",
                connection);

            // Usando % para buscar qualquer produto que contenha o texto da descrição
            command.Parameters.AddWithValue("@descricao", $"%{descricao}%");

            try
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        produtos.Add(new Produto
                        {
                            Id = reader.GetInt32(0),
                            Descricao = reader.GetString(1),
                            Valor = reader.GetDecimal(2),
                            CreateDate = reader.IsDBNull(3) ? (DateTime?)null : reader.GetDateTime(3),
                            UpdateDate = reader.IsDBNull(4) ? (DateTime?)null : reader.GetDateTime(4),
                            Estoque = reader.IsDBNull(5) ? (decimal?)null : reader.GetDecimal(5)
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                // Em uma aplicação real, você deveria logar este erro
                throw new ApplicationException("Erro ao buscar produtos no banco de dados", ex);
            }
        }

        return produtos;
    }

    public async Task<List<CompraCliente>> ConsultarComprasPorNomeClienteAsync(string nomeCliente)
    {
        var compras = new List<CompraCliente>();

        using (var connection = new SqlConnection(_connectionString))
        {
            var query = @"
                SELECT 
                    pd.Id AS CodPedido,
                    pd.DataDaCompra,
                    cli.Nome AS NomeDoCliente,
                    cli.Id AS CodigoDoCliente,
                    pro.Id AS CodigoDoProduto,
                    pro.Descricao,
                    pi.Quantidade,
                    pi.Valor AS ValorUnitario
                FROM Pedidos pd
                LEFT JOIN PedidoItens pi ON pi.PedidoId = pd.Id
                LEFT JOIN Clientes cli ON cli.Id = pd.ClienteId
                LEFT JOIN Produtos pro ON pro.Id = pi.ProdutoId
                WHERE cli.Nome LIKE @nomeCliente
                ORDER BY pd.DataDaCompra DESC";

            var command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@nomeCliente", $"%{nomeCliente}%");

            try
            {
                await connection.OpenAsync();
                using (var reader = await command.ExecuteReaderAsync())
                {
                    while (await reader.ReadAsync())
                    {
                        compras.Add(new CompraCliente
                        {
                            CodPedido = reader.GetInt32(0),
                            DataDaCompra = reader.GetDateTime(1),
                            NomeDoCliente = reader.GetString(2),
                            CodigoDoCliente = reader.GetInt32(3),
                            CodigoDoProduto = reader.GetInt32(4),
                            Descricao = reader.GetString(5),
                            Quantidade = reader.GetDecimal(6),
                            ValorUnitario = reader.GetDecimal(7)
                        });
                    }
                }
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Erro ao consultar compras do cliente", ex);
            }
        }

        return compras;
    }

    public string IncluirNovoCliente(ClientPostContract clientRequest)
    {
        if (clientRequest == null)
            throw new ArgumentNullException(nameof(clientRequest));
        using (var connection = new SqlConnection(_connectionString))
        {
            var command = new SqlCommand(
                "INSERT INTO Clientes (Nome, Email, Celular, Cpf, CreateDate, UpdateDate) " +
                "VALUES (@Nome, @Email, @Celular, @Cpf, @CreateDate, @UpdateDate); " +
                "SELECT SCOPE_IDENTITY();", connection);
            command.Parameters.AddWithValue("@Nome", clientRequest.Nome);
            command.Parameters.AddWithValue("@Email", clientRequest.Email);
            command.Parameters.AddWithValue("@Celular", clientRequest.Celular);
            command.Parameters.AddWithValue("@Cpf", clientRequest.Cpf);
            command.Parameters.AddWithValue("@CreateDate", DateTime.Now);
            command.Parameters.AddWithValue("@UpdateDate", DateTime.Now);
            try
            {
                connection.Open();
                var id = command.ExecuteScalar();
                return id?.ToString() ?? "0";
            }
            catch (Exception ex)
            {
                throw new ApplicationException("Erro ao incluir novo cliente", ex);
            }
        }
    }
}