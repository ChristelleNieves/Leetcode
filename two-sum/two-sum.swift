class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numsWithIndices = [Int:Int]()
        
        for i in 0..<nums.count {
            numsWithIndices[nums[i]] = i
        }
        
        for i in 0..<nums.count {
            guard let index2 = numsWithIndices[target - nums[i]],
            index2 != i else { continue }
            return [i, index2]
        }
        
        return [Int]()
    }
}