//: [Previous](@previous)

import Foundation

func part1(input: String) -> Int {
    let inputArray = input.components(separatedBy:  "\n")
    var countedTow = 0
    var countedThree = 0
    for string in inputArray {
        var isCounutedTow = 0
        var isCounutedThree = 0
        for val in UnicodeScalar("a").value...UnicodeScalar("z").value {
            let x = UnicodeScalar(val)!;
            let counted = string.filter { $0 == Character(x)}.count
            if (counted == 2) {
                if (isCounutedTow == 0) {
                    countedTow = countedTow + 1
                    isCounutedTow = isCounutedTow + 1
                }
            } else if (counted == 3) {
                if (isCounutedThree == 0) {
                    countedThree = countedThree + 1
                    isCounutedThree = isCounutedThree + 1
                }
            }
        }
    }
    return countedThree * countedTow
}
print("Part1: \(part1(input: input))")

let test = """
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
"""

func part2(input: String) -> String {
    let inputArray = input.components(separatedBy:  "\n")
    var indexArray1 = 0
    var indexArray2 = 0
    var finalString = ""
    
    for stringOne in inputArray {
        indexArray1 = indexArray1 + 1
        indexArray2 = 0
        for checkString in inputArray {
            indexArray2 = indexArray2 + 1
            if (indexArray1 != indexArray2) {
                let difference = zip(checkString, stringOne).filter{ $0 != $1 }
                if (difference.count == 1) {
                    let found1 = String(difference[0].0)
                    let found2 = String(difference[0].1)
                    for i in stringOne {
                        if String(i) == found2 || String(i) == found1 {
                            continue
                        } else if finalString.count == stringOne.count - 1 {
                            break
                        } else {
                            finalString.append(i)
                        }
                    }
                }
            }
        }
    }
    return finalString
}
print("Part2: \(part2(input: input))")
//: [Next](@next)
