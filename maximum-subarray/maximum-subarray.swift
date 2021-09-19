class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSoFar = nums[0]
        var maxEndHere = nums[0]
    
        for i in 1..<nums.count {
            maxEndHere = getMax(a: nums[i], b: maxEndHere + nums[i])
            maxSoFar = getMax(a: maxSoFar, b: maxEndHere)
        }
    
        return maxSoFar
    }

    func getMax(a: Int, b: Int) -> Int {
        return a > b ? a : b
    }
}