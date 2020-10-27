import UIKit

enum Color {
    case black, white, blue, red, green, silver
}
enum EngineType {
    case electro, diesel, gasoline
}
enum Windows {
    case opened, closed
}
enum Engine {
    case start, stop
}
enum DriveType {
    case fourWheelDrive, rearDrive, frontWheelDrive
}
protocol Car {
    var wheels: Int { get }
    var brand: String { get }
    var color: Color { get }
    var hp: Int { get }
    var engineType: EngineType { get }
    var windows: Windows { get set }
    var engineStatus: Engine { get set }
    var DriveType: DriveType { get set }
}

extension Car {
    mutating func closeWindows() {
        self.windows = Windows.closed
    }
    mutating func openWindows() {
        self.windows = Windows.opened
    }
    mutating func startEngine() {
        self.engineStatus = Engine.start
    }
    mutating func stopEngine() {
        self.engineStatus = Engine.stop
    }
}
enum RaceType {
    case normal, drift, drag
}

class SportCar: Car {
    var wheels: Int
    var brand: String
    var color: Color
    var hp: Int
    var engineType: EngineType
    var windows: Windows
    var engineStatus: Engine
    var DriveType: DriveType
    
    var raceType: RaceType
    var tax: Bool
    
    init(raceType: RaceType, tax: Bool, hp: Int, wheels: Int, brand: String, color: Color, engineType: EngineType, windows: Windows, engineStatus: Engine, driveType: DriveType) {
        self.raceType = raceType
        self.tax = tax
        self.hp = hp
        self.wheels = wheels
        self.brand = brand
        self.color = color
        self.engineType = engineType
        self.windows = windows
        self.engineStatus = engineStatus
        self.DriveType = driveType
    }
}
extension SportCar: CustomStringConvertible {
    var description: String {
        return "\(raceType), \(tax)"
    }
}
    
enum Trunk {
    case full, empty
}

class TrunkCar {
    var wheels: Int
    var brand: String
    var color: Color
    var hp: Int
    var engineType: EngineType
    var windows: Windows
    var engineStatus: Engine
    var DriveType: DriveType
    
    var trunk: Trunk
    
    init(trunk: Trunk, hp: Int, wheels: Int, brand: String, color: Color, engineType: EngineType, windows: Windows, engineStatus: Engine, driveType: DriveType) {
        self.trunk = trunk
        self.hp = hp
        self.wheels = wheels
        self.brand = brand
        self.color = color
        self.engineType = engineType
        self.windows = windows
        self.engineStatus = engineStatus
        self.DriveType = driveType
    }
}
extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "(\(trunk)"
    }
}
var car1 = SportCar(raceType: .drag, tax: true, hp: 666, wheels: 4, brand: "Mersedes", color: .silver, engineType: .diesel, windows: .closed, engineStatus: .start, driveType: .fourWheelDrive)
var car2 = SportCar(raceType: .normal, tax: false, hp: 555, wheels: 4, brand: "BMW", color: .black, engineType: .gasoline, windows: .opened, engineStatus: .stop, driveType: .rearDrive)
var car3 = SportCar(raceType: .drift, tax: true, hp: 777, wheels: 4, brand: "Audi", color: .red, engineType: .electro, windows: .closed, engineStatus: .stop, driveType: .frontWheelDrive)
var car4 = SportCar(raceType: .drift, tax: false, hp: 444, wheels: 4, brand: "Lexus", color: .white, engineType: .gasoline, windows: .opened, engineStatus: .start, driveType: .frontWheelDrive)
var car5 = TrunkCar(trunk: .empty, hp: 999, wheels: 4, brand: "BELAZ", color: .green, engineType: .diesel, windows: .closed, engineStatus: .start, driveType: .fourWheelDrive)
var car6 = TrunkCar(trunk: .full, hp: 300, wheels: 6, brand: "KAMAZ", color: .blue, engineType: .gasoline, windows: .opened, engineStatus: .stop, driveType: .fourWheelDrive)

print("""
    Первая машина \(car1.brand), цвет - \(car1.color). У машины \(car1.wheels) колеса и \(car1.hp) лошадиных сил. Тип двигателя \(car1.engineType), его статус - \(car1.engineStatus). Привод \(car1.DriveType), окна - \(car1.windows). Особые характеристики - \(car1.description)
    Вторая машина \(car2.brand), цвет - \(car2.color). У машины \(car2.wheels) колеса и \(car2.hp) лошадиных сил. Тип двигателя \(car2.engineType), его статус - \(car2.engineStatus). Привод \(car2.DriveType), окна - \(car2.windows). Особые характеристики - \(car2.description)
    Третья машина \(car3.brand), цвет - \(car3.color). У машины \(car3.wheels) колеса и \(car3.hp) лошадиных сил. Тип двигателя \(car3.engineType), его статус - \(car3.engineStatus). Привод \(car3.DriveType), окна - \(car3.windows). Особые характеристики - \(car3.description)
    Четвёртая машина \(car4.brand), цвет - \(car4.color). У машины \(car4.wheels) колеса и \(car4.hp) лошадиных сил. Тип двигателя \(car4.engineType), его статус - \(car4.engineStatus). Привод \(car4.DriveType), окна - \(car4.windows). Особые характеристики - \(car4.description)
    Пятая машина \(car5.brand), цвет - \(car5.color). У машины \(car5.wheels) колеса и \(car5.hp) лошадиных сил. Тип двигателя \(car5.engineType), его статус - \(car5.engineStatus). Привод \(car5.DriveType), окна - \(car5.windows). Особые характеристики - \(car5.description)
    Шестая машина \(car6.brand), цвет - \(car6.color). У машины \(car6.wheels) колес и \(car6.hp) лошадиных сил. Тип двигателя \(car6.engineType), его статус - \(car6.engineStatus). Привод \(car6.DriveType), окна - \(car6.windows). Особые характеристики - \(car6.description)
    """)
car1.openWindows()
car4.stopEngine()
print(car1.windows, car4.engineStatus)


