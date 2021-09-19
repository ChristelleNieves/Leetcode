class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfitSoFar = 0
        var minPrice = prices[0]
        
        for i in 0..<prices.count {
            if prices[i] < minPrice {
                minPrice = prices[i]
            } else {
                if prices[i] - minPrice > maxProfitSoFar {
                    maxProfitSoFar = prices[i] - minPrice
                }
            }
        }
        return maxProfitSoFar
    }
}