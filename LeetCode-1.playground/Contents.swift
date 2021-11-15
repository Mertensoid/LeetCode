
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

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> () {
    var listNode = l1
    var count = 0
    var sum1: Int32 = 0
    var sum2: Int32 = 0
    
    repeat {
        var result: Int32 = 0
        if let res = listNode?.val {
            var i = 0
            result = Int32(res)
            while i < count {
                result = result * 10
                i += 1
            }
        }
        sum1 = sum1 + result
        count += 1
        listNode = listNode?.next
        print(sum1)
    } while listNode?.next != nil
    
    listNode = l2
    count = 0
    
    repeat {
        var result: Int32 = 0
        if let res = listNode?.val {
            var i = 0
            result = Int32(res)
            while i < count {
                result = result * 10
                i += 1
            }
        }
        sum2 = sum2 + result
        
        count += 1
        listNode = listNode?.next
        print(sum2)
    } while listNode?.next != nil
}

//    if let res = listNode1?.val {
//        listNodeArray1.insert(Int32(res), at: 0)
//    }
//
//    while listNode2?.next != nil {
//        if let res = listNode2?.val {
//            listNodeArray2.insert(Int32(res), at: 0)
//        }
//        listNode2 = listNode2?.next
//    }
//
//    if let res = listNode2?.val {
//        listNodeArray2.insert(Int32(res), at: 0)
//    }
//    print(listNodeArray1)
//    print(listNodeArray2)
//    print(makeNum(array: listNodeArray1))
//    print(makeNum(array: listNodeArray2))
//
//    let sum: Int32 = makeNum(array: listNodeArray1) + makeNum(array: listNodeArray2)
//    var linkedRes: ListNode? = nil
//    if sum != 0 {
//
//        var array: [Int] = []
//        var res: Int32 = sum
//        var ost: Int32 = 0
//
//
//        while res != 0 {
//            ost = res % 10
//            array.insert(Int(ost), at: 0)
//            res = res / 10
//        }
//
//        for i in array {
//            linkedRes = ListNode.init(i, linkedRes)
//        }
//
//    } else {
//        linkedRes = ListNode.init()
//    }
//    return linkedRes
//}

//ЗДЕСЬ ОШИБКА! Я НЕ ПОНИМАЮ КАКОГО ХРЕНА ЭТО НЕ РАБОТАЕТ
//func makeNum(array: [Int32]) -> Int32 {
//    var inArray: [Int32] = array
//    var sum: Int32 = 0
//    var res: Int32 = 0
//    var arrayCount = inArray.count
//    while arrayCount != 0 {
//        print(inArray.count)
//        res = Int32(inArray[0])
//        var count = 1
//        while count < arrayCount {
//            res *= 10
//            count += 1
//        }
//        arrayCount -= 1
//        sum += res
//    }
//    return(sum)
//}

//func makeList(sum: Int) -> () {
//    if sum != 0 {
//        var array: [Int] = []
//        var res = sum
//        var ost = 0
//        var linkedRes: ListNode? = nil
//
//        while res != 0 {
//            ost = res % 10
//            array.insert(ost, at: 0)
//            res = res / 10
//        }
//
//        for i in array {
//            linkedRes = ListNode.init(i, linkedRes)
//        }
//        print(array)
//    } else {
//
//    }
    
    

    //return linkedRes
    
//    var listNodeArray2: [Int] = []
//
//    while linkedRes?.next != nil {
//        if let res = linkedRes?.val {
//            listNodeArray2.insert(res, at: 0)
//        }
//        linkedRes = linkedRes?.next
//    }
//
//    if let res = linkedRes?.val {
//        listNodeArray2.insert(res, at: 0)
//    }
//
//    print(listNodeArray2)
//
//    return array


let ln1 = ListNode.init(9)
let ln2 = ListNode.init(1, ListNode.init(9, ListNode.init(9, ListNode.init(9, ListNode.init(9,ListNode.init(9, ListNode.init(9, ListNode.init(9, ListNode.init(9, ListNode.init(9, ListNode.init(9)))))))))))

addTwoNumbers(ln1, ln2)

