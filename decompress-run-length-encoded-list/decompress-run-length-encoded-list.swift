class Solution {
    func decompressRLElist(_ nums: [Int]) -> [Int] {
        var resultArray = [Int]()
        var currentIndex = 0
        
        while currentIndex <= nums.count - 1 {
            if currentIndex % 2 == 0 {
                let frequency = nums[currentIndex]
                let value = nums[currentIndex + 1]
                
                resultArray += Array(repeating: value, count: frequency)
            }
            
            currentIndex += 2
        }
        
        return resultArray
    }
}