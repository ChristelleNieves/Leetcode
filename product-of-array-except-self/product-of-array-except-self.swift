class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var leftProducts = Array(repeating: 1, count: nums.count)
        var rightProducts = Array(repeating: 1, count: nums.count)
        var result = Array(repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            leftProducts[i] = nums[i - 1] * leftProducts[i - 1]
        }
        
        for i in (0..<nums.count - 1).reversed() {
            rightProducts[i] = nums[i + 1] * rightProducts[i + 1]
        }
        
        for i in 0..<nums.count {
            result[i] = leftProducts[i] * rightProducts[i]
        }
        
        return result
    }
}