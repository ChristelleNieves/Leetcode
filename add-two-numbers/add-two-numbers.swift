/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var currentNodeL1 = l1
        var currentNodel2 = l2
        let dummyHead = ListNode(0)
        var resultList = dummyHead
        var carry = 0
    
        while currentNodeL1 != nil || currentNodel2 != nil {
            let val1 = currentNodeL1?.val ?? 0
            let val2 = currentNodel2?.val ?? 0
            let currentSum = val1 + val2 + carry
        
            carry = currentSum / 10
            let lastDigit = currentSum % 10
        
            let newNode = ListNode(lastDigit)
            resultList.next = newNode
        
            currentNodeL1 = currentNodeL1?.next
            currentNodel2 = currentNodel2?.next
            resultList = resultList.next!
        }
    
        if carry > 0 {
            let newNode = ListNode(carry)
            resultList.next = newNode
            resultList = resultList.next!
        }
    
        return dummyHead.next
    }
}