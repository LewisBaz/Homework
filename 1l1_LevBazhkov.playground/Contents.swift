import UIKit

// x^2 - 2x - 3 = 0
let a: Double = 1
let b: Double = -2
let c: Double = -3
var disc: Double = (b*b - 4*a*c)
var x1: Double = ( -b + sqrt(disc)) / 2*a
var x2: Double = ( -b - sqrt(disc)) / 2*a
var message = "Корней нет"

if (disc >= 0){
    print(x1, x2)
} else if (disc < 0){
    print(message)
}
