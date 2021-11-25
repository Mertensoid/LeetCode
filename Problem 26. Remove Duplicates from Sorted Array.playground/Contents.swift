var testArray = [1,2,2,3,6,7,8,8,9,12]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var newArray: [Int] = []
    var k: Int = 0
    for i in nums {
        if !newArray.contains(i) {
            k += 1
            newArray.append(i)
        }
    }
    nums = newArray
    return k
}

print(removeDuplicates(&testArray))
print(testArray)
