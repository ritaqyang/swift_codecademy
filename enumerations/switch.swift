enum Vehicle {
    case airplane
    case boat
    case truck
}

// 1: Add instance of Vehicle here
var myRide = Vehicle.truck
 
// 2: Add switch statement here 



switch myRide {
    case .airplane:
        print("Let's fly to Peru")
    case .boat:
        print("Let's sail to Hawaii")
    case .truck:
        print("Let's drive to the store ")
}

//CaseIterable 
// 1: Make Vehicle conform to CaseIterable 

enum Vehicle: CaseIterable {
    case truck
    case boat
    case airplane
}

// 2: Create for loop here 
for vehicle in Vehicle.allCases {
  print(vehicle)
}  

