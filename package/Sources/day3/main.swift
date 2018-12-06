//
//  master.swift
//  package
//
//  Created by Veit Progl on 05.12.18.
//

import Foundation
var testPart1 = """
#1 @ 1,3: 4x4
#2 @ 3,1: 4x4
#3 @ 5,5: 2x2
"""
var testInput2 = """
#1 @ 53,238: 26x24
#2 @ 134,11: 27x12
#3 @ 937,817: 10x25
#4 @ 441,971: 21x15
#5 @ 881,682: 16x24
#6 @ 769,699: 18x26
"""

func part1(parseInput: String) -> Int {
    let inputArrayFabrick = parseInput.components(separatedBy:  "\n")
    var VisuallArray = [String]()
    var inputSet = Set<[String]> ()
    for part in inputArrayFabrick {
        inputSet.insert(part.components(separatedBy: " "))
    }
    var maxLeft = 0
    var maxTop = 0
    var maxWidth = 0
    var maxHeight = 0
    var LengthOfMap = 0
    var HgihtOfMap = 0
    
    var maxArray = [[Int]]()
    var overlayCounter = 0
    
    func findMax() {
        for part in inputSet {
            //            let id = part[0]
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            //            print(leftTop)
            if Int(leftTop[0])! > maxLeft{
                maxLeft = Int(leftTop[0])!
            }
            if Int(leftTop[1])! > maxTop{
                maxTop = Int(leftTop[1])!
            }
            if Int(widthHeight[0])! > maxWidth{
                maxWidth = Int(widthHeight[0])!
            }
            if Int(widthHeight[1])! > maxHeight{
                maxHeight = Int(widthHeight[1])!
            }
        }
        LengthOfMap = maxWidth + maxLeft
        HgihtOfMap = maxHeight + maxTop
    }
    func createMaxArray() {
        //        yes I do basacley the same thing as in findMax :face_Palm:
        maxArray = [[Int]](repeating: [Int](repeating: 0, count: maxHeight + maxLeft), count: maxTop + maxHeight)
        for part in inputSet {
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            
            var isSetW = 0
            var isSetH = 0
            while isSetH < Int(widthHeight[1])! {
                if isSetW < Int(widthHeight[0])! {
                    while isSetW < Int(widthHeight[0])! {
                        
                        if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] != 0 { // Sobald ich hier != hin schreibe geht es viel schneller aber kommt ein falches ergebnis bei rum :(
                            maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = 1
                        } else if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] == 2 {
                            continue
                        } else {
                            maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = 2
                            overlayCounter += 1
                        }
                        isSetW += 1
                    }
                } else {
                    isSetH += 1
                    isSetW = 0
                }
            }
            while isSetH < Int(widthHeight[1])! {
                //                print(leftTop[0])
                maxArray[Int(leftTop[1])! + 1 + isSetH ][Int(leftTop[0])!] = Int(1)
                isSetH += 1
            }
        }
    }
    
    findMax()
    createMaxArray()
    let test = maxArray.reduce(0) { $0 + $1.reduce(0) { $1 > 1 ? $0 + 1 : $0 } }
    let result = overlayCounter - test
    return result
}

//print(part1(parseInput: input))
//: [Next](@next)
// 118322 is right

func part1New(parseInput: String) -> Int {
    let inputArrayFabrick = parseInput.components(separatedBy:  "\n")
    var VisuallArray = [String]()
    var inputSet = Set<[String]> ()
    for part in inputArrayFabrick {
        inputSet.insert(part.components(separatedBy: " "))
    }
    var maxLeft = 0
    var maxTop = 0
    var maxWidth = 0
    var maxHeight = 0
    var LengthOfMap = 0
    var HgihtOfMap = 0
    
    var maxArray = [[Int]]()
    var overlayCounter = 0
    
    func findMax() {
        for part in inputSet {
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            if Int(leftTop[0])! > maxLeft{
                maxLeft = Int(leftTop[0])!
            }
            if Int(leftTop[1])! > maxTop{
                maxTop = Int(leftTop[1])!
            }
            if Int(widthHeight[0])! > maxWidth{
                maxWidth = Int(widthHeight[0])!
            }
            if Int(widthHeight[1])! > maxHeight{
                maxHeight = Int(widthHeight[1])!
            }
        }
        LengthOfMap = maxWidth + maxLeft
        HgihtOfMap = maxHeight + maxTop
    }
    func createMaxArray() {
        
        maxArray = [[Int]](repeating: [Int](repeating: 0, count: maxHeight + maxLeft), count: maxTop + maxHeight)
        for part in inputSet {
            //            let id = part[0].replacingOccurrences(of: "#", with: "")
            //      yes I do basacley the same thing as in findMax :face_Palm:
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            
            var isSetW = 0
            var isSetH = 0
            // Don´t use If arount this while loops :affe_no_see:
            while isSetH < Int(widthHeight[1])! {
                while isSetW < Int(widthHeight[0])! {
                    if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] == 0 {
                        maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = 1
                    } else if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] == 1 {
                        maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = 2
                        overlayCounter += 1
                    }else {
                        maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = 2
                    }
                    isSetW += 1
                }
                isSetH += 1
                isSetW = 0
            }
        }
    }
    findMax()
    createMaxArray()
    
    let result = overlayCounter
    //    for i in maxArray {
    //        print(i)
    //    }
    return result
}
//print(part1New(parseInput: input))

// a shity copy of part1New with some small changes
func part2(parseInput: String) -> Set<[Int]> {
    let inputArrayFabrick = parseInput.components(separatedBy:  "\n")
    var VisuallArray = [String]()
    var inputSet = Set<[String]> ()
    for part in inputArrayFabrick {
        inputSet.insert(part.components(separatedBy: " "))
    }
    var maxLeft = 0
    var maxTop = 0
    var maxWidth = 0
    var maxHeight = 0
    var LengthOfMap = 0
    var HgihtOfMap = 0
    
    var maxArray = [[Int]]()
    var overlayCounter = 0
    var overlayIDSet = Set<[Int]>()
    
    func findMax() {
        for part in inputSet {
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            if Int(leftTop[0])! > maxLeft{
                maxLeft = Int(leftTop[0])!
            }
            if Int(leftTop[1])! > maxTop{
                maxTop = Int(leftTop[1])!
            }
            if Int(widthHeight[0])! > maxWidth{
                maxWidth = Int(widthHeight[0])!
            }
            if Int(widthHeight[1])! > maxHeight{
                maxHeight = Int(widthHeight[1])!
            }
        }
        LengthOfMap = maxWidth + maxLeft
        HgihtOfMap = maxHeight + maxTop
    }
    func createMaxArray() {
        var idSet = Set<[Int]>()
        maxArray = [[Int]](repeating: [Int](repeating: 0, count: maxHeight + maxLeft), count: maxTop + maxHeight)
        for part in inputSet {
            let id = Int(part[0].replacingOccurrences(of: "#", with: ""))!
            let leftTop = part[2].replacingOccurrences(of: ":", with: "").split(separator: ",")
            let widthHeight = part[3].split(separator: "x")
            
            var isSetW = 0
            var isSetH = 0
            // Don´t use If arount this while loops :affe_no_see:
            // here a some small changes :) some have swag
            while isSetH < Int(widthHeight[1])! {
                while isSetW < Int(widthHeight[0])! {
                    if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] == 0 {
                        maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = id
                        overlayIDSet.insert([id])
                    } else if maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] != 0 && maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] != -2  {
                        overlayCounter += 1
                        let oldID = maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW]
                        idSet.insert([id])
                        idSet.insert([oldID])
                        maxArray[Int(leftTop[1])! + isSetH][Int(leftTop[0])! + isSetW ] = -2
                    }
                    isSetW += 1
                }
                isSetH += 1
                isSetW = 0
            }
        }
        for id in overlayIDSet {
            if idSet.contains(id) {
                overlayIDSet.remove(id)
            }
        }
    }
    findMax()
    createMaxArray()
    
    //    for i in maxArray {
    //        print(i)
    //    }
    return overlayIDSet
}
print(part2(parseInput: input))
