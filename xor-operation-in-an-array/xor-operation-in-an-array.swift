class Solution {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var resultArray = [Int]()
        var xoredResult = 0
        
        for i in 0..<n {
            resultArray.append(start + 2 * i)
        }
        
        for num in resultArray {
            xoredResult ^= num
        }
        
        return xoredResult
    }
}