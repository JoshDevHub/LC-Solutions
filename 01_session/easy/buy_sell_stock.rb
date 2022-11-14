# frozen_string_literal: true

def max_profit(prices)
  min_stock = prices.first
  prices.reduce(0) do |profit, price|
    profit = [profit, price - min_stock].max
    min_stock = [min_stock, price].min
    profit
  end
end
