import UIKit

var num1 = Int.random(in:1..<1000)
var num2 = Int.random(in:1..<1000)
var num3 = Int.random(in:1..<1000)
var num4 = Int.random(in:1..<1000)
var num5 = Int.random(in:1..<1000)
let num6 = Int.random(in:1..<1000)
let num7 = Int.random(in:1..<1000)
let num8 = Int.random(in:1..<1000)
let num9 = Int.random(in:1..<1000)
let num10 = Int.random(in:1..<1000)

var list = [num1,num2,num3,num4,num5,num6,num7,num8,num9,num10]


var test = list.sorted()
var dict:[Int:Int] = [0:test[0],
                      1:test[1],
                      2:test[2],
                      3:test[3],
                      4:test[4],
                      5:test[5],
                      6:test[6],
                      7:test[7],
                      8:test[8],
                      9:test[9]]
for element in test {
  print(element)
}
print("")
for i in 0...9{
    print(dict[i] ?? 0)}
