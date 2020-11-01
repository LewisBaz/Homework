import UIKit

protocol Car {
    var redDrive: Bool { get }
    var fastDrive: Bool { get }
    var speed: Int { get }
}

class AmbulanceCar: Car {
    var redDrive: Bool
    var fastDrive: Bool
    var speed: Int
    init(redDrive: Bool, fastDrive: Bool, speed: Int) {
        self.redDrive = redDrive
        self.fastDrive = fastDrive
        self.speed = speed
    }
}

class PoliceCar: Car {
    var redDrive: Bool
    var fastDrive: Bool
    var speed: Int
    init(redDrive: Bool, fastDrive: Bool, speed: Int) {
        self.redDrive = redDrive
        self.fastDrive = fastDrive
        self.speed = speed
    }
}

class DeputyCar: Car {
    var redDrive: Bool
    var fastDrive: Bool
    var speed: Int
    init(redDrive: Bool, fastDrive: Bool, speed: Int) {
        self.redDrive = redDrive
        self.fastDrive = fastDrive
        self.speed = speed
    }
}

class CitezenCar: Car {
    var redDrive: Bool
    var fastDrive: Bool
    var speed: Int
    init(redDrive: Bool, fastDrive: Bool, speed: Int) {
        self.redDrive = redDrive
        self.fastDrive = fastDrive
        self.speed = speed
    }
}

func calculateSpeed(vechicles: [Car]) -> Int {
    var total = 0
    vechicles.forEach {total += $0.speed}
    return total
}

struct Queue<T: Car> {
    private var cars: [T] = []
    
    mutating func push(_ car: T) {
        cars.append(car)
    }
    
    mutating func pop() -> T {
        return cars.removeFirst()
    }
    
    var totalSpeed: Int {
        var carSpeed = 0
        cars.forEach { carSpeed += $0.speed }
        return carSpeed
    }
    
    subscript( indices: UInt...) -> Int {
        var speed = 0
        for index in indices where index < self.cars.count {
                    speed += self.cars[Int(index)].speed
                }
                return speed
    }
}


    var car1 = AmbulanceCar(redDrive: true, fastDrive: true, speed: 100)
    var car2 = PoliceCar(redDrive: true, fastDrive: true, speed: 120)
    var car3 = DeputyCar(redDrive: true, fastDrive: false, speed: 60)
    var car4 = CitezenCar(redDrive: false, fastDrive: false, speed: 60)

    var array:[Car] = [car1,car2,car3,car4]
if (calculateSpeed(vechicles: array)/4) < 60 {
    print("В городе спокойно, средняя скороть на 4 авто не превышает 60 км/ч")
} else {
    print("В городе неспокойно, средняя скороть на 4 авто превышает 60 км/ч")
}

var queueOfCars = Queue<CitezenCar>()

queueOfCars.push(CitezenCar(redDrive: false, fastDrive: false, speed: 60))
queueOfCars.push(CitezenCar(redDrive: false, fastDrive: true, speed: 110))
queueOfCars.push(CitezenCar(redDrive: false, fastDrive: false, speed: 45))
queueOfCars.push(CitezenCar(redDrive: true, fastDrive: true, speed: 130))

print("Общая скороть последних четырёх машин составляет - \(queueOfCars.totalSpeed) км/ч")

queueOfCars [5]
