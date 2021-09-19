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
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 != nil {
            return l2
        }
        else if l2 == nil && l1 != nil {
            return l1
        }
        else if l1 == nil && l2 == nil {
            return nil
        }
    
        let dummyHead = ListNode(0)
        var newList = dummyHead
    
        var list1 = l1
        var list2 = l2
    
        while list1 != nil && list2 != nil {
            if list1!.val < list2!.val {
                newList.next = list1
                list1 = list1!.next
            }
            else {
                newList.next = list2
                list2 = list2!.next
            }
        
            newList = newList.next!
        }
    
        if list1 != nil {
            newList.next = list1
        }
    
        if list2 != nil {
            newList.next = list2
        }
    
        return dummyHead.next
    }
}