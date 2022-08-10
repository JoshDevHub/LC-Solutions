namespace BuyAndSell
{
    class Solution
    {
        public int MaxProfit(int[] prices)
        {
            int minStock = prices[0];
            int profit = 0;
            foreach (int price in prices)
            {
                profit = Math.Max(profit, price - minStock);
                minStock = Math.Min(minStock, price);
            }
            return profit;
        }
    }
}
