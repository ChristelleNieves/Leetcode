class Solution {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var resultArray = [Int]()
    
        for i in 0..<nums.count {
            let indexToInsert = index[i]
            let valueToInsert = nums[i]
        
            if resultArray.count != 0 {
                guard indexToInsert <= resultArray.count else { continue }
            }
        
            resultArray.insert(valueToInsert, at: indexToInsert)
        }
    
        return resultArray
    }
}