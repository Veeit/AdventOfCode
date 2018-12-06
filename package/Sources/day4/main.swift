//
//  main.swift
//  adventofcode2018PackageDescription
//
//  Created by Veit Progl on 05.12.18.
//

import Foundation

func formateString(parseInput: String) -> [Int:[Int]]{
    let inputArray = parseInput.components(separatedBy:  "\n").sorted()
    var newArray = inputArray.map{value in value.components(separatedBy:  " ")}
    newArray = newArray.map{value in value.filter{!$0.contains("begins") && !$0.contains("asleep") && !$0.contains("wakes") && !$0.contains("falles") && !$0.contains("shift")}}
    
    // ALL my global Variables at one Place !!!
    var currentId = 0
    var correntDay = 0
    var startTime = 0
    var sleepDic = [Int: [Int]]()
    
    for entry in newArray {
        let time = Int(entry[1].suffix(3).replacingOccurrences(of: "]", with: ""))!
        if entry[2] == "Guard" {
            currentId = Int(entry[3].replacingOccurrences(of: "#", with: ""))!
        } else if entry[2] == "falls" {
            startTime = time
        } else if entry[2] == "up" {
            let wakeUpTime = time
            let day = Int(entry[0].suffix(2))!
            var sleepTime = sleepDic[currentId] ?? Array(repeating: 0, count: 60)
            
            while startTime < wakeUpTime {
                if correntDay == 0 {
                    correntDay = day
                } else if correntDay != day {
                    correntDay = day
                    sleepTime[startTime] = sleepTime[startTime] + 1
                } else {
                    sleepTime[startTime] = sleepTime[startTime] + 1
                }
                startTime += 1
            }
            sleepDic[currentId] = sleepTime
        }
    }
    return sleepDic
}
func part1(parseInput: String) -> Int {
    let sleepDic = formateString(parseInput: parseInput)
    let (id, minutes) = sleepDic.max(by: { $0.value.reduce(0, +) < $1.value.reduce(0, +) })!
    let maxMin = minutes.enumerated().max(by: { $0.element < $1.element })!.offset
    let calc = id * maxMin
    return calc
}

func part2(parseInput: String) -> Int{
    let sleepDic = formateString(parseInput: parseInput)
    let (id, minutes) = sleepDic.max(by: { $0.value.max()! < $1.value.max()! })!
    let maxMin = minutes.enumerated().max(by: { $0.element < $1.element })!.offset
    let calc = id * maxMin
    return calc
}
print(part1(parseInput: input))
print(part2(parseInput: input))
