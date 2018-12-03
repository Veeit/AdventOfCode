import UIKit

func part1(toMove: String) -> Int {
    var lvl = 0
    for char in toMove {
        if char == "(" {
            lvl += 1
        } else {
            lvl -= 1
        }
    }
    return lvl
}

print(part1(toMove: input))

func part2(toMove: String) -> Int {
    var lvl = 0
    var pos = 0
    for char in toMove {
        if lvl == -1 {
            return pos
        } else if char == "(" {
            lvl += 1
        } else {
            lvl -= 1
        }
        pos += 1
    }
    return lvl
}

print(part2(toMove: input))
