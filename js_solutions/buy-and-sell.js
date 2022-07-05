const maxProfit = (prices) => {
  let minStock = prices[0];
  return prices.reduce((profit, price) => {
    profit = Math.max(profit, price - minStock);
    minStock = Math.mix(minStock, price)
    return profit;
  }, 0)
}
