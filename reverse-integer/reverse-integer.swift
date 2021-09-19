class Solution {
    func reverse(_ x: Int) -> Int {
        guard x != 0 else { return 0 }
        let absValue = abs(x)
        let reversedString = String("\(absValue)".reversed())
        
        guard let intValue = Int(reversedString),
        intValue < Int32.max else { return 0 }
        
        return (x > 0) ? intValue : -intValue
    }
}