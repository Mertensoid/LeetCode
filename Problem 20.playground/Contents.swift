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
    
    var stack: [Character] = []
    
    for i in s.indices {
        if let stackLast = stack.last {
            switch s[i] {
            case ")" where stackLast == "(":
                stack = stack.dropLast()
            case "}" where stackLast == "{":
                stack = stack.dropLast()
            case "]" where stackLast == "[":
                stack = stack.dropLast()
            default:
                stack.append(s[i])
            }
        } else {
            stack.append(s[i])
            print(stack)
        }
    }
    
    if stack.isEmpty {
        return true
    } else {
        return false
    }
}

isValid("{[()]}(){[]}")
