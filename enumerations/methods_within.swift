enum Season {
    case winter, spring, summer, fall
 
    mutating func changeSeason() {
        switch self {
        case .winter:
            self = .spring
        case .spring:
            self = .summer
        case .summer:
            self = .fall
        case .fall:
            self = .winter
        }
    }
}  

enum Vehicle {
    case truck(isFourWheelDrive: Bool)
    case boat
    case airplane
    
    // 1: Create mutating instance method here
    mutating func goOffRoad() {
        self = .truck(isFourWheelDrive: true)
    }
}

var myRide = Vehicle.airplane

// 2: Call method here 

myRide.goOffRoad()

// 3: Print the contents of myRide

print(myRide)