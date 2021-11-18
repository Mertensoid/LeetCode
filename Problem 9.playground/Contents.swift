import UIKit

var x: Int32 = -121

var str: String = String(x)
var newStr: String = ""
print(x)

for charX in str {
    newStr.insert(charX, at: newStr.startIndex)
}
print(newStr)

//return str == newStr

