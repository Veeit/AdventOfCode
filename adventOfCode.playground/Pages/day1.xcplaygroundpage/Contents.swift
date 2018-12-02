import UIKit

let input = "-5,-2,+1,+14,+7,+5,-14,-4,-5,-12,+7,-5,+17,+5,-13,-12,+15,+22,-5,-6,-12,+20,+4,+2,+17,-1,+18,-7,-1,-17,+11,-12,-5,-2,+9,+2,-6,-17,-1,+2,-3,+15,+19,+9,-8,+13,+1,+11,+16,+3,-16,-7,-15,-15,+12,+16,+18,+1,-9,+16,-9,-19,+17,+1,-15,+13,-9,-8,-1,+7,+17,+13,+15,-17,-3,+12,-10,+5,+4,-16,+15,+3,+19,+1,-2,+19,-16,-11,+4,-10,-8,+13,+13,+19,-6,-19,+1,-4,+18,+15,+16,-18,+12,+3,-9,+8,+3,-9,+11,+4,+8,+1,+6,-10,-3,+15,+16,+15,+12,-14,+4,-14,-7,-3,+14,+4,+3,-6,-7,+11,-2,-18,+17,-3,+14,+18,+6,+8,+18,-13,-7,+17,-18,-10,-15,+13,-16,+5,-10,+15,-8,-4,+14,+13,-10,-14,+7,+5,+13,-4,+12,+3,+14,-7,+6,+12,+17,-18,+3,-6,-3,-14,-1,+13,+19,+3,+9,+4,+11,+12,+3,+1,+14,+7,-17,+12,+11,+6,-7,+4,-11,-1,+6,-19,-10,-16,-2,-19,+7,+9,-3,+5,+12,+15,+8,+11,+1,+8,+15,-9,-9,-8,-10,-3,-16,+7,-17,+9,-5,+16,-15,-4,+15,-5,-25,-6,+1,+4,+17,+19,-13,+17,+7,+19,+2,+4,+10,+16,-9,+19,+13,+3,-10,+9,+5,+1,+18,-11,-14,-4,-5,-13,-7,-12,+2,+3,+6,-16,-1,+13,-10,-4,-1,-3,+9,+22,+4,-18,+17,+11,-21,-17,-18,-8,+12,+6,+15,+12,+10,-7,+18,+10,-8,-10,-18,+11,-17,+25,+15,-9,-19,+38,-3,-6,-23,+34,-25,-5,-12,+25,+14,+17,+30,+3,+9,-8,+16,+21,+21,+4,-12,+23,-13,+9,+3,+6,+13,+15,+6,-7,+15,+12,-10,+13,+12,-7,+13,+4,-9,+18,-10,+5,+8,-7,+2,-14,-12,-1,-6,-16,-18,-3,+1,+12,-6,+15,-17,+15,+13,+6,-15,+26,+1,-21,-3,-21,-4,+14,-1,-19,-11,+13,-10,-14,+2,-17,-23,+25,-16,+8,-30,+17,-44,+13,-19,+5,-9,-12,+10,+14,+17,+24,-15,+7,-61,-103,-18,+21,-22,-6,-9,-6,-9,-7,-15,-17,+4,-1,+10,+8,+14,-4,+15,-16,-6,-16,-15,-12,+15,+10,-15,+3,+15,-10,-17,+3,-5,-12,+4,+3,-37,-7,+14,-18,-8,+6,-11,+14,+30,+7,+23,+39,-12,+11,-8,+11,-1,+56,-28,-12,+7,+34,+47,+21,+88,+61,+18,+10,-99,-287,+26,-858,-209,-61255,+2,-7,-8,+12,+18,+17,-14,-2,+14,+4,+3,+3,-15,+21,+3,+20,+1,+3,-1,-25,-2,+7,-9,+17,-19,-6,-13,+2,-4,-3,-14,-8,+12,-20,+17,-40,+11,+3,-20,-16,-18,-3,-6,-10,+4,+20,-12,-3,+11,+16,-2,+4,-9,+28,-12,+5,+17,-13,+35,+25,+2,+35,-17,-8,+31,+3,-39,-46,+3,-96,-18,-14,-14,-12,+9,+15,+3,+18,-8,+1,-2,-15,+13,+14,-13,-3,+7,-11,-15,-17,-12,-15,-17,+9,+7,-10,-8,-3,+9,+16,+3,+15,-14,-5,-9,+1,-3,+10,+3,-18,-21,-11,+2,-17,-17,-7,-11,+8,+11,-2,-7,-1,-19,-2,-16,+1,+5,+11,+18,+5,+17,+2,-5,-2,+19,-4,+12,+2,+20,-13,-20,-12,+10,+4,+14,-1,+12,+13,-10,-13,-8,-1,+14,+16,+6,+10,+18,+19,+14,-1,+6,-13,-9,+10,-20,+1,+1,-12,+6,+7,-15,-13,-2,+14,-19,-5,-10,-17,+15,-5,+8,+20,+9,+14,-6,+4,-3,+19,+18,-14,-3,-8,+4,+16,+7,-3,-5,+19,-2,+12,+19,+12,-10,-17,-40,+1,-11,+19,-27,-9,+45,-27,+31,+1,-25,+41,+58,-5,-39,-112,+1,-8,-3,-6,-15,-3,-9,+13,+13,-24,+3,-4,+13,-19,-21,+16,-20,-10,-15,-16,-1,-13,-12,-17,+16,+17,+16,-2,-9,-1,-19,+8,+5,-18,+17,-19,-19,-12,+14,-18,-12,+10,+9,-13,-8,+19,+16,+13,-5,+2,+16,-15,+17,+9,+10,+2,-5,+20,+16,-8,-4,+16,+6,-7,-2,-11,+18,+11,-1,+2,+5,+3,+40,-38,+22,-11,-15,-27,+7,-25,+4,-11,-15,-12,+15,-20,-13,+9,-13,+7,-5,+10,+18,+24,+8,+15,-6,-10,-10,-1,-4,-3,-17,+7,-15,+20,-19,-18,-14,-4,-26,-22,-5,+17,+6,+13,+9,+7,+28,-11,-8,+57,-23,-37,-11,-43,+3,-14,+3,-14,+13,-15,+6,-23,+8,+12,-8,+15,+16,+2,-9,-14,+18,+19,-1,-43,-2,-3,-13,+5,-6,-13,-20,+15,+13,-12,+3,+2,+3,+11,+7,-17,-8,-13,+18,-17,-2,-13,+5,+3,+1,-11,+20,+4,+2,-1,-19,-8,-19,+1,-6,-12,+8,-6,-5,+1,+6,+9,-12,+13,+10,-14,+20,-11,+9,+9,-3,-18,+9,-5,+9,+2,-9,-19,-4,-10,+7,-8,+68,+30,+2,-9,+12,-65,+15,-26,-9,-15,-67,-38,-36,-37,-7,+18,-20,-44,+35,-70,-85,+14,+18,-499,+209,-61690,-5,+15,-4,+3,+5,+6,+15,+16,+3,-4,+12,-14,-7,-9,-15,+2,-1,-11,-21,-8,-2,-15,+19,+7,-10,-19,-3,-14,+4,+9,+13,-16,-14,+2,+10,-19,+6,+16,+11,+7,-14,-9,-21,-7,-12,+2,+12,-6,+125503"

let inputArray = input.components(separatedBy: ",")

func part1(praseInput: [String]) -> Int {
    func isCaling(praseInput: [String], start: Int, end: Int, counted: Int) -> Int {
        if (start >= end) {
            return counted
        } else {
            let toCount = Int(praseInput[start])!
            if (toCount >= 0) {
                let isCounted = counted + toCount
                return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted)
            } else {
                let isCounted = counted - abs(toCount)
                return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted)
            }
        }
    }
    return isCaling(praseInput: inputArray, start: 0, end: inputArray.count, counted: 0)
}

print(part1(praseInput: inputArray)) //454

//
// I am 💩
//

//
//func part2(praseInput: [String], counted: Int, start: Int, end: Int) -> Int {
//    func isCaling(praseInput: [String], start: Int, end: Int, counted: Int) -> Int {
//        if (start >= end) {
//            print("==============================")
//            return counted
//        } else {
//            let toCount = Int(praseInput[start])!
//            if (toCount >= 0) {
//                print("counted: \(counted)")
//                print("toCount: \(toCount)")
//                let isCounted = counted + toCount
//                print("isCounted: \(isCounted)")
//                return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted)
//            } else {
//                print("counted: \(counted)")
//                print("toCount: \(toCount)")
//                let isCounted = counted - abs(toCount)
//                print("isCounted: \(isCounted)")
//                return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted)
//            }
//        }
//    }
//    if (start >= end) {
//        return counted
//    } else {
//        print(counted)
//        return part2(praseInput: praseInput, counted: isCaling(praseInput: praseInput, start: 0, end: praseInput.count, counted: counted), start: start + 1, end: 2)
//    }
//
//}
//
//print(part2(praseInput: inputArray, counted: 0, start: 0, end: 2))

//func part2(praseInput: [String]) -> Int {
//    func isCaling(praseInput: [String], start: Int, end: Int, counted: Int, fecArray: [Int]) -> Int {
//        if (start >= end) {
//            let isCheck = checkIfExists(isCounted: counted, countedArray: fecArray, start: 0, end: fecArray.count)
//            if (isCheck == 0000) {
//                return 00000
//            } else {
//                return isCheck
//            }
//        } else {
//            let toCount = Int(praseInput[start])!
//            if (toCount >= 0) {
//                let isCounted = counted + toCount
//                let arrayCounted = fecArray + [isCounted]
//                let isCheck = checkIfExists(isCounted: isCounted, countedArray: arrayCounted, start: 0, end: arrayCounted.count)
//                if (isCheck == 0000) {
//                    return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted, fecArray: arrayCounted)
//                } else {
//                    return isCheck
//                }
//            } else {
//                let isCounted = counted - abs(toCount)
//                let arrayCounted = fecArray + [isCounted]
//                let isCheck = checkIfExists(isCounted: isCounted, countedArray: arrayCounted, start: 0, end: arrayCounted.count)
//                if (isCheck == 0000) {
//                    return isCaling(praseInput: praseInput , start: start + 1, end: praseInput.count, counted: isCounted, fecArray: arrayCounted)
//                } else {
//                    return isCheck
//                }
//            }
//        }
//    }
//    func checkIfExists(isCounted: Int, countedArray: [Int], start: Int, end: Int) -> Int {
//        let toCheck = Int(praseInput[start])!
//        if (start >= end) {
//            if (toCheck == isCounted) {
//                return toCheck
//            } else {
//                return checkIfExists(isCounted: isCounted, countedArray: countedArray, start: start + 1, end: countedArray.count)
//            }
//        }
//        else {
//            return 00000
//        }
//    }
//    let thig = isCaling(praseInput: inputArray, start: 0, end: inputArray.count, counted: 0, fecArray: [])
//    if (thig == 0) {
//    }
//    return 000
//}

// Give up and startet new with some google
// With strickt FP is it to slow :(

func part2(inputArray: [String]) -> Int {
    var number = 0
    var found: Set<Int> = [number]
    var index = 0
    while true {
        number += Int(inputArray[index])!
        if (found.contains(number)) {
            return number
        } else {
            index = (index + 1) % inputArray.count
            found.insert(number)
        }
    }
    return number
}
print(part2(inputArray: inputArray))
