class Solution {
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        
        var high = nums.count - 1
        var low = 0
        
        guard nums[low] > nums[high] else { return nums[0] }
        
        while low <= high {
            var mid = low + (high - low) / 2
            
            if nums[mid + 1] < nums[mid] {
                return nums[mid + 1]
            }
            
            if nums[mid - 1] > nums[mid] {
                return nums [mid]
            }
            
            if nums[mid] > nums[0] {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        
        return -1
    }
}