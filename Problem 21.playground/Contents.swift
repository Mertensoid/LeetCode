
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var list1: ListNode? = l1
        var list2: ListNode? = l2
        var array: [Int] = []
        
        var flag = true
        
        repeat {
            if list1 != nil {
                array.append(list1!.val)
                list1 = list1?.next
            } else {
                flag = false
            }
        } while flag
        flag = true
        repeat {
            if list2 != nil {
                array.append(list2!.val)
                list2 = list2?.next
            } else {
                flag = false
            }
        } while flag
        array = array.sorted(by: >)
        
        var resList: ListNode? = nil
        if array.count == 0 {
            return resList
        } else {
            for i in array.indices {
                resList = ListNode(array[i], resList)
            }
            return resList
        }
    }
}


var l1 = ListNode(1, ListNode(3, ListNode(7, ListNode(12, ListNode(47, ListNode(88))))))
var l2 = ListNode(-76, ListNode(-13, ListNode(6, ListNode(11, ListNode(65, ListNode(68, ListNode(99)))))))

var res = Solution()
res.mergeTwoLists(l1, l2)
