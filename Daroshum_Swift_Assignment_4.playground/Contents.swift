import Foundation

protocol Trailer {
    var brand: String { get }
    func startEngine()
    func stopEngine()
}

protocol EntertainmentSystem {
    var hasTV: Bool { get }
    func turnOnTV()
    func turnOffTV()
}

class Camper: Trailer, EntertainmentSystem {
    var brand: String
    var isEngineRunning: Bool = false
    var hasTV: Bool
    
    init(brand: String, hasTV: Bool) {
        self.brand = brand
        self.hasTV = hasTV
    }
    
    func startEngine() {
        isEngineRunning = true
        print("Engine started.")
    }
    
    func stopEngine() {
        isEngineRunning = false
        print("Engine stopped.")
    }
    
    func turnOnTV() {
        if hasTV {
            print("TV turned on.")
        } else {
            print("TV not available.")
        }
    }
    
    func turnOffTV() {
        if hasTV {
            print("TV turned off.")
        } else {
            print("TV not available.")
        }
    }
}

// Testing code

let myCamper = Camper(brand: "CampCo", hasTV: true)

myCamper.startEngine()
myCamper.stopEngine()
myCamper.turnOnTV()
myCamper.turnOffTV()



