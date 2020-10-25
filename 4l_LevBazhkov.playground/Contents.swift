import UIKit

enum EngineType {
    case electro, diesel, gasoline
}
enum Color {
    case black, white, blue, red, green
}
enum Trunk {
    case full, empty
}
enum RaceType {
    case normal, drift, drag
}
enum Windows {
    case opened, closed
}
class Car {
    var brand: String
    var hp: Int
    var doorsCount: Int
    var engineType: EngineType
    var color: Color
    var wheels: Int
    var windows: Windows
    
    init(brand: String, hp: Int, doorsCount: Int, engineType: EngineType, color: Color, wheels: Int, windows: Windows) {
        self.brand = brand
        self.hp = hp
        self.doorsCount = doorsCount
        self.engineType = engineType
        self.color = color
        self.wheels = wheels
        self.windows = windows
    }
    func closeWindows() {
    }
}

class TrunkCar: Car {
    var trunk: Trunk
    
    init(trunk: Trunk, brand: String, hp: Int, engineType: EngineType, windows: Windows, color: Color) {
        self.trunk = trunk
        super.init(brand: brand, hp: hp, doorsCount: 2, engineType: engineType, color: color, wheels: 6, windows: windows)
    }
    override func closeWindows() {
        windows = .closed
    }
}

class SportCar: Car {
    var raceType: RaceType
    var tax: Bool
    
    init(brand: String, hp: Int, raceType: RaceType, tax: Bool, windows: Windows, engineType: EngineType, color: Color) {
        self.raceType = raceType
        self.tax = tax
        super.init(brand: brand, hp: hp, doorsCount: 4, engineType: engineType, color: color, wheels: 4, windows: windows)
    }
    override func closeWindows() {
        windows = .closed
    }
}
    
var car1 = SportCar(brand: "Mersedes", hp: 777, raceType: .normal, tax: true, windows: .closed, engineType: .diesel, color: .blue)
var car2 = TrunkCar(trunk: .full, brand: "Kamaz", hp: 404, engineType: .diesel, windows: .opened, color: .red)
var car3 = SportCar(brand: "BMW", hp: 666, raceType: .drift, tax: true, windows: .opened, engineType: .gasoline, color: .black)
var car4 = TrunkCar(trunk: .empty, brand: "Maz", hp: 200, engineType: .diesel, windows: .closed, color: .green)
var car5 = SportCar(brand: "Audi", hp: 505, raceType: .drag, tax: false, windows: .closed, engineType: .electro, color: .white)

print("""
    Марка первого автомобиля \(car1.brand), у неё \(car1.hp) лошадиных сил. Количество колёс \(car1.wheels), количество дверей \(car1.doorsCount). Режим езды \(car1.raceType), окна в режиме \(car1.windows). Цвет авто - \(car1.color), тип топлива - \(car1.engineType), налог \(car1.tax)
    Марка второго автомобиля \(car2.brand), у неё \(car2.hp) лошадиных сил. Количество колёс \(car2.wheels), количество дверей \(car2.doorsCount). Кузов авто - \(car2.trunk), окна в режиме \(car2.closeWindows()). Цвет авто - \(car2.color), тип топлива - \(car2.engineType)
    Марка третьего автомобиля \(car3.brand), у неё \(car3.hp) лошадиных сил. Количество колёс \(car3.wheels), количество дверей \(car3.doorsCount). Режим езды \(car3.raceType), окна в режиме \(car3.windows). Цвет авто - \(car3.color), тип топлива - \(car3.engineType), налог \(car3.tax)
    Марка четвёртого автомобиля \(car4.brand), у неё \(car4.hp) лошадиных сил. Количество колёс \(car4.wheels), количество дверей \(car4.doorsCount). Кузов авто - \(car4.trunk), окна в режиме \(car4.windows). Цвет авто - \(car4.color), тип топлива - \(car4.engineType)
    Марка пятово автомобиля \(car5.brand), у неё \(car5.hp) лошадиных сил. Количество колёс \(car5.wheels), количество дверей \(car5.doorsCount). Режим езды \(car5.raceType), окна в режиме \(car5.windows). Цвет авто - \(car5.color), тип топлива - \(car5.engineType), налог \(car5.tax)
""")

print(car2.windows)
