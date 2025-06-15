using Microsoft.Extensions.AI;
using ModelContextProtocol.Server;
using SalesMCP.Contracts;
using SalesMCP.Models;
using System.ComponentModel;
using System.Text.Json;

namespace SalesMCP;

[McpServerToolType]
public class SalesTool
{
    private static readonly string _myconnection = "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=BackOffice.Data;Integrated Security=True;Connect Timeout=30;Encrypt=False;Trust Server Certificate=False;Application Intent=ReadWrite;Multi Subnet Failover=False";
    
    [McpServerTool, Description("Retrieves specific client sales and his produtcts with prices")]
    public static async Task<IList<CompraCliente>> GetSalesDataAsync(string clientName)
    {
        var service = new DatabaseService(_myconnection);
        var salesData = await service.ConsultarComprasPorNomeClienteAsync(clientName);
        if(salesData is null || salesData.Count == 0)
        {
            return new List<CompraCliente>();
        }
        return salesData;
    }

    [McpServerTool, Description("Get product details")]
    public static async Task<string> GetProductDetailsAsync(string description)
    {
        var service = new DatabaseService(_myconnection);
        var searchData = service.BuscarProdutosPorDescricao(description);

        if (searchData is null)
            return "No data found";

        var response = JsonSerializer.Serialize(searchData);

        return response;
    }

    [McpServerTool, Description("Save client data into database")]
    public static async Task<string> SaveClientsAsync(ClientPostContract clientRequest)
    {
        var service = new DatabaseService(_myconnection);
        var saveResponse = service.IncluirNovoCliente(clientRequest);

        if (saveResponse is null)
            return "No data found";

        return $"New client saved with id:{saveResponse}";
    }
}

