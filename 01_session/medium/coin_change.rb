# frozen_string_literal: true

def coin_change(coins, amount)
  max = amount + 1
  tracking = [max] * max
  tracking[0] = 0

  (1...max).each do |a|
    coins.each do |c|
      coin_diff = a - c
      next if coin_diff.negative?

      tracking[a] = [tracking[a], 1 + tracking[coin_diff]].min
    end
  end
  tracking[amount] == max ? -1 : tracking[amount]
end
