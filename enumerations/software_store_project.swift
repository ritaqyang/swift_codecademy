

//first enum: 
//products a user can purchase
//store raw values = software display name 

enum ProductType: String,CaseIterable{
    case aceRepository = "Ace Repository"
    case dealForcer = "Deal Forcer"
    case  kadencePlanner = "Kadence Planner"
    case mailCannon = "Mail Cannon"

    
}


func displayProductOfferings(){
        //get number of products 
        let num = ProductType.allCases.count 
        print("There are ", num ,"products")
        
        for product in ProductType.allCases{
            print(product.rawValue)
        }
    }

displayProductOfferings()
//second enum: 
//software edition (+ mutating method)
enum Edition: String{
    case basic
    case premium 
    case ultimate
    //sets its value one step higher unless its the highest 
    mutating func upgrade(){
        switch self {
            case .basic: 
                self = .premium
            case .premium:
                self = .ultimate
            case .ultimate:
                print("Cannot upgrade since it is already the highest")

        }
    }
}

var myEdition = Edition.ultimate
myEdition.upgrade()


//third enum: 
//delivery methods (associated values, computed property)
enum DeliveryMethod{
    case cloudDigital (isLifetime : Bool)
    case shipping (weight: Int)

    //computed property 
    var shippingCost: Int {
        switch self{
            case .cloudDigital:
                return 0
            case let .shipping(weight):
                return weight * 2
        }
    }
}

var myOrder = DeliveryMethod.shipping(weight:6)
print(myOrder.shippingCost)
        






