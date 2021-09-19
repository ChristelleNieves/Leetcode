class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
    
        while low <= high {
            let mid = low + (high - low + 1) / 2
        
            if nums[mid] == target {
                return mid
            }
        
            if nums[mid] < target {
                if mid + 1 <= nums.count - 1 {
                    if nums[mid + 1] > target {
                     return mid + 1
                    }
                } else if mid + 1 > nums.count - 1{
                    return mid + 1
                }
            
                low = mid + 1
            }
        
            if nums[mid] > target {
                if mid - 1 >= 0 {
                    if nums[mid - 1] < target {
                        return mid
                    }
                }
            
                high = mid - 1
            }
        }
    
        return 0
    }
}