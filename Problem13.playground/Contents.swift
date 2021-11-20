import UIKit

var combinedRomanNums: [String] = ["IV", "IX", "XL", "XC", "CD", "CM"]
var combinedRomanNumsInt: [Int] = [4,9,40,90,400,900]
var romanNums: [String] = ["I", "V", "X", "L", "C", "D", "M"]
var romanNumsInt: [Int] = [1,5,10,50,100,500,1000]

    func romanToInt(_ s: String) -> Int {
        var taskString: String = s
        var res: Int = 0
        var flag = false
        for char in taskString {
            taskString.removeFirst()
            
            if !taskString.isEmpty && !flag {
                switch char {
                case "C" where taskString[taskString.startIndex] == "M":
                    res -= 100
                    flag = true
                case "M":
                    res += 1000
                case "C" where taskString[taskString.startIndex] == "D":
                    res -= 100
                    flag = true
                case "D":
                    res += 500
                case "X" where taskString[taskString.startIndex] == "C":
                    res -= 10
                    flag = true
                case "C":
                    res += 100
                case "X" where taskString[taskString.startIndex] == "L":
                    res -= 10
                    flag = true
                case "L":
                    res += 50
                case "I" where taskString[taskString.startIndex] == "X":
                    res -= 1
                    flag = true
                case "X":
                    res += 10
                case "I" where taskString[taskString.startIndex] == "V":
                    res -= 1
                    flag = true
                case "V":
                    res += 5
                case "I":
                    res += 1
                default: break
                }
            } else {
                flag = false
                switch char {
                case "M":
                    res += 1000
                case "D":
                    res += 500
                case "C":
                    res += 100
                case "L":
                    res += 50
                case "X":
                    res += 10
                case "V":
                    res += 5
                case "I":
                    res += 1
                default: break
                }
            }
            print(char)
            print(res)
        }
        return res
    }
romanToInt("VIIXLMCMCMC")
