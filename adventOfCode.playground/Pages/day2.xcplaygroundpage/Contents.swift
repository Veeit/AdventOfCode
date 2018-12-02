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
                    print("found2")
                    print(isCounutedTow)
                    countedTow = countedTow + 1
                    isCounutedTow = isCounutedTow + 1
                }
            } else if (counted == 3) {
                if (isCounutedThree == 0) {
                    print("found3")
                    print(isCounutedThree)
                    countedThree = countedThree + 1
                    isCounutedThree = isCounutedThree + 1
                }
            }
        }
    }
    return countedThree * countedTow
}
//print(part1(input: input))

let test = """
abcde
fghij
klmno
pqrst
fguij
axcye
wvxyz
"""
//["cvfqlbidheyujgtrswxmckqnap", "cvzqlbidheyujgtrswxmckqnap"]
func part2(input: String) {
    let inputArray1 = input.components(separatedBy:  "\n")
    let inputArray2 = input.components(separatedBy:  "\n")
    var indexArray1 = 0
    var indexArray2 = 0
    var resultArray = [String]()
    
    for stringOne in inputArray1 {
        indexArray1 = indexArray1 + 1
        indexArray2 = 0
        print("=================")
        for checkString in inputArray2 {
            indexArray2 = indexArray2 + 1
            if (indexArray1 != indexArray2) {
                if ((stringOne.elementsEqual(checkString)) == true) {
                    print("Passwords are equal")
                } else {
                    let difference = zip(checkString, stringOne).filter{ $0 != $1 }
                    if (difference.count == 1) {
                        print("Found")
                        resultArray.append(stringOne)
                        //print(difference)//[("z", "f")]
                    }
                }
            }
        }
    }
    print(resultArray)
}
//cvqlbidheyujgtrswxmckqnap

part2(input: input)
//: [Next](@next)
/*
 var found1 = String(difference[0])
 var found2 = String(difference[1])
 var resultString = String(zip(found1, found2).reduce(into: "", {
 state, element in if element.0 == element.1 {
 state.append(element.0)
 }
 }))
 */
