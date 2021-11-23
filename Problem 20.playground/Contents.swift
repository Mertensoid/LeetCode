import UIKit

extension String {
    subscript(_ i: Int) -> String {
        let idx1 = index(startIndex, offsetBy: i)
        let idx2 = index(idx1, offsetBy: 2)
        return String(self[idx1..<idx2])
    }
}

func findStringLength(_ s: String) -> Int {
    var length: Int = 0
    for _ in s{
        length += 1
    }
    return length
}

func isValid(_ s: String) -> Bool {
    
    if s[s.startIndex] == ")" ||
        s[s.startIndex] == "]"  ||
        s[s.startIndex] == "}"  ||
        s[s.endIndex] == "("  ||
        s[s.endIndex] == "["  ||
        s[s.endIndex] == "{" {
        return false
    }
//    if s[s.startIndex] == "(" {
//        if let closeIndex = s.firstIndex(of: ")") {
//            let tempString = s[s.startIndex..<s.firstIndex(of: ")"]
//            ]
//        }
//
//    }
    var testString = s
    var stringArray: [Character] = []
    //for index in 0...findStringLength(testString)-2
    
//    while  {
//        if testString[index] == "()" || testString[index] == "{}" || testString[index] == "{}"
//
//    }
    

    
    return true
}

isValid("{[()]}(){[]}")
