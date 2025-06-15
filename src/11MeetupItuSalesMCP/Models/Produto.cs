namespace SalesMCP.Models;
public class Produto
{
    public int Id { get; set; }
    public string? Descricao { get; set; }
    public decimal Valor { get; set; }
    public DateTime? CreateDate { get; set; }
    public DateTime? UpdateDate { get; set; }
    public decimal? Estoque { get; set; }
}
