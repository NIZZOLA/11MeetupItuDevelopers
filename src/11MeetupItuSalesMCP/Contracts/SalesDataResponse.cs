namespace SalesMCP.Contracts;

public class SalesDataResponse
{
    public DateTime StartDate { get; set; }
    public DateTime EndDate { get; set; }
    public decimal TotalSales { get; set; }
    public int NumberOfTransactions { get; set; }
}
