class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        profit = 0
        minimum = prices[0]
        for _, p in enumerate(prices):
            profit = max((p - minimum), profit)
            minimum = min(p, minimum)
        return profit
