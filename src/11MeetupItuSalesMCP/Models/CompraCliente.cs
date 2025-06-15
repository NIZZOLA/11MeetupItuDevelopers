namespace SalesMCP.Models;

public class CompraCliente
{
    public int CodPedido { get; set; }
    public DateTime DataDaCompra { get; set; }
    public string NomeDoCliente { get; set; }
    public int CodigoDoCliente { get; set; }
    public int CodigoDoProduto { get; set; }
    public string Descricao { get; set; }
    public decimal Quantidade { get; set; }
    public decimal ValorUnitario { get; set; }
}