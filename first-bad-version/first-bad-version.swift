/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var low = 1
        var high = n
        
        while low <= high {
            var mid = low + (high - low) / 2
            
            if isBadVersion(mid) {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }
        
        return low
    }
}