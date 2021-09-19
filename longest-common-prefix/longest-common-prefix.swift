class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }
    
        var longestPrefix = strs.min(by: {$0.count < $1.count})!
    
        for str in strs {
            while !str.hasPrefix(longestPrefix) {
                longestPrefix.popLast()
            }
        }
    
        return longestPrefix
    }
}