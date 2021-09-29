class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        guard nums.count > 0 else { return -1 }
        
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            var mid = low + (high - low) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return -1
    }
}