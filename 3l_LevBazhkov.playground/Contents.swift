import UIKit

struct SportCar {
    let brand: String
    let year: Int
    let bodyCapacity: bodyPullPush
    let trunkCapacity: trunkPullPush
    let carCapacityFull: Int
    let engine: engine
    var windows: windows
    
    mutating func doorStatus(){
        self.windows = .open
    }
}

struct TruckCar {
    let brand: String
    let year: Int
    let bodyCapacity: bodyPullPush
    let trunkCapacity: trunkPullPush
    let truckCapacityFull: Int
    let engine: engine
    var windows: windows
    
    mutating func doorStatus(){
        self.windows = .close
    }
}

enum windows {
    case open, close
}
enum engine {
    case start, stop
}
enum trunkPullPush{
    case empty, halfEmpty, full, halfFull
}
enum bodyPullPush {
    case empty, halfEmpty, full, halfFull
}

var car1 = SportCar(brand: "MERSEDES", year: 2020, bodyCapacity: .full, trunkCapacity: .halfFull, carCapacityFull: 10, engine: .start, windows: .close)
var car2 = SportCar(brand: "BMW", year: 2018, bodyCapacity: .empty, trunkCapacity: .halfEmpty, carCapacityFull: 12, engine: .start, windows: .open)
var car3 = TruckCar(brand: "GAZ", year: 2005, bodyCapacity: .empty, trunkCapacity: .halfFull, truckCapacityFull: 30, engine: .stop, windows: .close)
var car4 = TruckCar(brand: "KAMAZ", year: 1980, bodyCapacity: .full, trunkCapacity: .halfEmpty, truckCapacityFull: 80, engine: .stop, windows: .open
)

car1.brand
car2.year
car3.windows
car4.truckCapacityFull

print("""
    First car is \(car1.brand) \(car1.year) year of release. Body is \(car1.bodyCapacity), truck is \(car1.trunkCapacity), full truck capacity is \(car1.carCapacityFull) cubes. Right now engine is \(car1.engine) and windows are \(car1.windows)
    Second car is \(car2.brand) \(car2.year) year of release. Body is \(car2.bodyCapacity), truck is \(car2.trunkCapacity), full truck capacity is \(car2.carCapacityFull) cubes. Right now engine is \(car2.engine) and windows are \(car2.windows)
    Third car is \(car3.brand) \(car3.year) year of release. Body is \(car3.bodyCapacity), truck is \(car3.trunkCapacity), full truck capacity is \(car3.truckCapacityFull) cubes. Right now engine is \(car3.engine) and windows are \(car3.windows)
    Fourth car is \(car4.brand) \(car4.year) year of release. Body is \(car4.bodyCapacity), truck is \(car4.trunkCapacity), full truck capacity is \(car4.truckCapacityFull) cubes. Right now engine is \(car4.engine) and windows are \(car4.windows)
""")
