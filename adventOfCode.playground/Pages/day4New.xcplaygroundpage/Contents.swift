//: [Previous](@previous)

import Foundation

func part1(parseInput: String) {
    let inputArray = parseInput.components(separatedBy:  "\n")
    var newArray = inputArray.map{value in value.components(separatedBy:  " ")}
    newArray = newArray.map{value in value.filter{!$0.contains("Guard") && !$0.contains("asleep") && !$0.contains("wakes") && !$0.contains("falles") && !$0.contains("shift")}}
    
    var i = 0
    var correntID = ""
    
//    Make Array good :)
    for entry in newArray {
        let date = entry[0]
        let time = entry[1]
        var id   = entry[2]
        
        newArray[i][0] = String(date.suffix(2))
        newArray[i][1] = time.suffix(3).replacingOccurrences(of: "]", with: "")
        
        if (id.contains("#")) {
            id = String(id.dropFirst())
            newArray.remove(at: i)
            correntID = id
        } else {
            newArray[i].insert(correntID, at: 2)
            i += 1
        }
    }
    
//    make int array
    i = 0
    var downTime = ""
    for entry in newArray {
        let state = entry[3]
        
        if state == "falls" {
            downTime = newArray[i][1]
            newArray.remove(at: i)
        } else {
            newArray[i].insert(downTime, at: 1)
            newArray[i].remove(at: 4)
            i += 1
        }
    }
    print(newArray)
    let intArray = newArray.map{value in value.compactMap { Int($0)}}
    print(intArray)

    
    var sleepDic = [Int:[Int]]()
    i = 0
    var correntDay = 0
    for entry in intArray {
        let id = entry[3]
        var downMinute = entry[1]
        let upMinute = entry[2]
        let day = entry[0]
        var maxArray = [Int]()
        if sleepDic[id] == nil {
            maxArray = Array(repeating: 0, count: 60)
        } else {
            maxArray = sleepDic[id]!
        }

        while downMinute < upMinute {
            if correntDay == 0 {
                correntDay = day
            } else if correntDay != day {
                correntDay = day
                maxArray[downMinute] = maxArray[downMinute] + 1
            } else {
                maxArray[downMinute] = maxArray[downMinute] + 1
            }
            downMinute += 1
        }
//        print(upMinute)
        sleepDic[id] = maxArray
    }
//    print(sleepDic)
//    print(maxArray)
//    print all
    /*
     #  first = day
     #  seccond = down minute
     #  third = up minute
     #  last = id
     */
    var maxSleep = 0
    var maxSleepID = 0
    var maxPos = 0
    for entry in sleepDic {
        print(entry)
        if maxSleep < entry.value.reduce(0, +) {
            maxSleep = entry.value.reduce(0, +)
            maxSleepID = entry.key
        }
    }
//    print(maxSleepID)
    maxPos = (sleepDic[maxSleepID]?.firstIndex(of: (sleepDic[maxSleepID]?.max())!))!
    print(maxPos * maxSleepID)
    print(maxSleepID)
    print(maxSleep)
}
//part1(parseInput: input2)

func part1test() {
    let lines = test1.split(separator: "\n").sorted()
    
    var currentGuardId: Int = -1
    var currentSleepStart: Int = -1
    var sleepMins = [Int: [Int]]()
    for line in lines {
        let words = line.split(separator: " ")
//        print(words)
        if words[2] == "Guard" {
            currentGuardId = Int(words[3].dropFirst())!
        } else if words[2] == "falls" {
            let word = words[1]
            print(word)
            currentSleepStart = Int(word[word.index(word.startIndex, offsetBy: 3)..<word.index(word.startIndex, offsetBy: 5)])!
        } else if words[2] == "wakes" {
            var mins = sleepMins[currentGuardId] ?? Array(repeating: 0, count: 60)
            let word = words[1]
            let currentSleepEnd = Int(word[word.index(word.startIndex, offsetBy: 3)..<word.index(word.startIndex, offsetBy: 5)])!
            for min in currentSleepStart..<currentSleepEnd {
                mins[min] += 1
            }
            sleepMins[currentGuardId] = mins
        }
    }
    print(sleepMins)
    
    let (guardId, mins) = sleepMins.max(by: { $0.value.reduce(0, +) < $1.value.reduce(0, +) })!
    let maxMin = mins.enumerated().max(by: { $0.element < $1.element })!.offset
    print("Task 1: \(guardId * maxMin)")
}
part1test()
//: [Next](@next)

//92128
//2879

//5157
//191
