
func strStr(_ haystack: String, _ needle: String) -> Int {

    if needle.isEmpty {
        return 0
    }
    
    for needleIndex in 0...haystack.count-needle.count {
        var subString: String = ""
        var checkString: String = String(haystack.dropFirst(needleIndex))
        for _ in 0...needle.count-1 {
            subString.append(checkString.remove(at: checkString.startIndex))
        }
        if subString == needle {
            return needleIndex
        }
    }
    return -1
}

print(strStr1("hello", "ll"))

func strStr1(_ haystack: String, _ needle: String) -> Int {
    
    if needle.isEmpty {
        return 0
    }
    
    var testHaystack = haystack
    let testNeedle = needle
    
    while testHaystack.count >= testNeedle.count {
        var count = 0
        for i in testNeedle.indices {
            if testNeedle[i] == testHaystack[i] {
                count += 1
            }
        }
        if count == testNeedle.count {
            return haystack.count - testHaystack.count
        } else {
            testHaystack = String(testHaystack.dropFirst())
        }
    }
    return -1
}
