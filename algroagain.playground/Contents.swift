//: Playground - noun: a place where people can play

import UIKit

let arararr: [Int] = [1,5,8,11,14,16,19,23,25,26,29,30]
let target = 28

func twoSum ( buildwith: [Int], ans:Int) -> (index1: Int, index2: Int) {
    
    buildwith.sort()
    var firstNum: Int?
    var secondNum: Int?
    for i in 0...buildwith.count-2 {
        for j in i+1 ... buildwith.count-1 {
            if buildwith[j] < buildwith[i] {
                break
            } else {
                if (buildwith[i] + buildwith[j]) == ans {
                firstNum = buildwith[i]
                secondNum = buildwith[j]
                }
            }
        }
    }
    return (firstNum!, secondNum!)
}

let query = twoSum(arararr, ans: 28)
print("index1 = \(query.index1), index2 = \(query.index2)")

