import UIKit

enum Errors: String, Error {
    case engine = "Check engine"
    case wheels = "Check wheels pressure"
    case engineOil = "Check engine oil level"
    case gasTank = "Check gas level"
}

func checkCar(_ value: Int) throws -> String {
    var text = ""
    
    switch value {
    case 1:
        throw Errors.engine
    case 2:
        throw Errors.wheels
    case 3:
        throw Errors.engineOil
    case 4:
        throw Errors.gasTank
    default:
        text = "No errors"
    }
    return text
}

do {
    try checkCar(3)
} catch {
    print((error as! Errors).rawValue)
}
