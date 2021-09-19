class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else { return false }
        return String(x) == String(String(x).reversed())
    }
}