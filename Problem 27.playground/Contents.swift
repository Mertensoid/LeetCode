
var array: [Int] = [0,1,2,2,3,0,4,2]
//[1,2,3,4,3,3,55,7]
//[3,2,2,3]
//3
//[0,1,2,2,3,0,4,2]

func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var count: Int = nums.count
    for item in nums {
        if item == val {
            
            nums.remove(at: nums.firstIndex(of: item)!)
            count -= 1
        }
    }
    return count
}

print(removeElement(&array, 2))
print(array)
