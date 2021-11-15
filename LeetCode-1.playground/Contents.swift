
//Problem 1

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var answer: [Int] = []
        var items = nums
        items.removeLast()
        for item in items {
            if let checkCount = nums.firstIndex(of: item){
                for i in checkCount+1...nums.count-1 {
                    if item + nums[i] == target {
                        answer = [nums.firstIndex(of: item)!, i]
                    }
                }
            }
        }
        return answer
    }
}

var solution = Solution()
solution.twoSum([2,7,11,15], 9)

//Problem 2
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var listNode1 = l1
    var listNode2 = l2

    var value1 = 0
    var value2 = 0
    var remem = 0
    var sum = 0
    var array: [Int] = []
    
    repeat {
        if let valueListNode = listNode1?.val {
            if listNode1?.next != nil {
                listNode1 = listNode1?.next
            } else {
                listNode1 = ListNode.init()
            }
            value1 = valueListNode
            print("Val1 = \(value1)")
        }
        if let valueListNode = listNode2?.val {
            
            if listNode2?.next != nil {
                listNode2 = listNode2?.next
            } else {
                listNode2 = ListNode.init()
            }
            value2 = valueListNode
            print("Val2 = \(value2)")
        }
        sum = value1 + value2 + remem
        if sum > 9 {
            remem = sum / 10
            sum = sum % 10
            print(sum)
        } else {
            remem = 0
        }
        
        array.insert(sum, at: 0)
        
        if listNode1?.next == nil && listNode2?.next == nil && listNode1?.val == 0 && listNode2?.val == 0 {
            break
        }
        
    } while true
    
    if remem == 1 {
        array.insert(remem, at: 0)
    }
    print(array)
    var linkedRes: ListNode? = nil

        for i in array {
            linkedRes = ListNode.init(i, linkedRes)
        }

    return linkedRes
}

let ln1 = ListNode.init(9)
let ln2 = ListNode.init(1, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9, ListNode.init(
                        9)))))))))))

addTwoNumbers(ln1, ln2)

