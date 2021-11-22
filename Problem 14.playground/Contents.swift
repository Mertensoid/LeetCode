import UIKit

func longestCommonPrefix(_ strs: [String]) -> String {
    var stringsArray = strs
    var flag = true
    var prefixStr: String = ""
    var tempChar: Character = "a"
    repeat {
        if !stringsArray[0].isEmpty {
            tempChar = stringsArray[0][stringsArray[0].startIndex]
        }
        for strIndex in stringsArray.indices  {
            if stringsArray[strIndex].isEmpty || stringsArray[strIndex].first != tempChar{
                flag = false
                break
            } else {
                tempChar = stringsArray[strIndex].removeFirst()
            }
        }
        if flag {
            prefixStr.append(tempChar)
        }
    } while flag
    return prefixStr
}

longestCommonPrefix(["strind", "string"])
