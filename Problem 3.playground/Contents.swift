func lengthOfLongestSubstring(_ s: String) -> Int {
    var newStr = ""
    var count = 0
    var maxCount = 0
    for i in s {
        if !newStr.contains(i){
            newStr.append(i)
            count += 1
        } else {
            var ind = 0
            for j in newStr {
                if j == i {
                    ind += 1
                    for _ in 1...ind {
                        newStr.remove(at: newStr.startIndex)
                    }
                    break
                } else {
                    ind += 1
                }
            }
            count = count - ind + 1
            newStr.append(i)
        }
        if count > maxCount {
            maxCount = count
        }
    }
    return maxCount
}

lengthOfLongestSubstring("pwwkew")
