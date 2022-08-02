class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // Return array of indices
        // One solution
        
        for i in 0..<nums.count {
            
            if nums.contains(target - nums[i]) {
                if let index = nums.firstIndex(of: target - nums[i]) {
                    if index != i {
                        return [i, index]
                    }
                }
            }
        }
        
        return []
    }
}