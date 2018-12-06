//
//  main.swift
//  adventofcode2018PackageDescription
//
//  Created by Veit Progl on 06.12.18.
//

import Foundation

func part1(parseInput: String) {
    var oldChar:Character = "-"
    var newString = ""
    var lastRemove:Character = "-"
    for i in parseInput {
        if String(oldChar).caseInsensitiveCompare(String(i)) == .orderedSame {
            lastRemove = i
        } else if String(lastRemove).caseInsensitiveCompare(String(i)) == .orderedSame {
            continue
        } else {
            oldChar = i
            newString.append(i)
        }
//        print(i)
    }
    print(newString)
}

part1(parseInput: test1)
/*
dabCBAcaDA
dabAcaCBAcaDA
 
 */
