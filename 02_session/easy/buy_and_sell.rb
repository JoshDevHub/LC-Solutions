# frozen_string_literal: true

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  profit = 0
  min_price = prices[0]

  prices.each do |p|
    profit = [profit, p - min_price].max
    min_price = [min_price, p].min
  end
  profit
end

# 5min

# NOTES
# algo/structure: array
# time: O(n)
# space: O(1)

# no notes; simple problem
