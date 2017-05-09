
func execute7() {
    
    // 1
    
    //: At the end of the code snippet below, what is the value of macchiato.steamedMilk when EspressoDrink is implemented as a struct? What about when EspressoDrink is implemented as a class?
    
    enum Amount {
        case none
        case splash
        case some
        case alot
    }
    
    struct EspressoDrink {
        let numberOfShots: Int
        var steamedMilk: Amount
        let foam: Bool
        
        init(numberOfShots: Int, steamedMilk: Amount, foam: Bool) {
            self.numberOfShots = numberOfShots
            self.steamedMilk = steamedMilk
            self.foam = foam
        }
    }
    
    print("1: ", terminator: "")
    
    let macchiato = EspressoDrink(numberOfShots: 2, steamedMilk: .none, foam: true)
    
    var espressoForGabrielle = macchiato
    espressoForGabrielle.steamedMilk = .splash
    
    print(macchiato.steamedMilk) // .none
    
    // ↑ if EspressoDrink is Class the value is .splash
    
    
    // 2
    
    enum FingerName: Int {
        case thumb = 1, indexFinger, middleFinger, ringFinger, pinky
    }
    
    print("2: ", terminator: "")

    print(FingerName.pinky.rawValue)
    
    
    // 3
    
    struct Window {
        let height: Double
        let width: Double
        var open: Bool
    }
    
    enum WritingImplement {
        case pen
        case pencil
        case marker
        case crayon
        case chalk
    }
    
    // 
    
    struct Material {
        let name: String
        let density: Double
        let stiffness: Double
    }
    
    
    struct Bicycle {
        let frame: Material
        let weight: Double
        let category: String
    
        static var bikeCategories: [String] = ["Road", "Touring", "Mountain", "Commuter", "BMX"]
    
        func lookCool() {
            print("Check out my gear-shifters!")
        }
    }
    
    struct Cyclist {
        var speed: Double
        let agility: Double
        let bike: Bicycle
    
        var maneuverability: Double {
            get {
                return agility - speed/5
            }
        }
    
        init(speed: Double, agility: Double, bike: Bicycle) {
            self.speed = speed
            self.agility = agility
            self.bike = bike
        }
    
        mutating func brake() {
            speed -= 1
        }
    
        func pedalFaster(factor: Double) {
            speed * factor
        }
    }
    
    //
    
    enum Size: String {
        case small = "8 ounces"
        case medium = "12 ounces"
        case large = "16 ounces"
    }
    
    
    // 4
    
    struct Cookie {
        
        struct Person {
            let name: String
        }
        
        let flavor: String
        var minutesSinceRemovalFromOven: Int
        
        var isDelicious: Bool {
            return minutesSinceRemovalFromOven >= 1440 /* = 1 day */ ? false : true
        }
        
        
        func tempt(persons: [Person]) {
            
            persons.forEach{
                
                if isDelicious {
                    print("\($0.name) can't stand waiting to eat this cookie any more...")
                } else {
                    print("\($0.name) wasn't tempted")
                }
                
                
            }
        }
    }
    
    print("4: ", terminator: "")

    let myCookie = Cookie(flavor: "Good", minutesSinceRemovalFromOven: 45)
    
    myCookie.tempt(persons: [Cookie.Person(name: "Mika"), Cookie.Person(name: "Bob")])
    
    
    // 5
    
    class BnBListing {
        
        enum Category {
            case apartment, house
        }
        
        let category:     Category
        var availability: Bool
        
        
        init(category: Category, availability: Bool) {
            self.category     = category
            self.availability = availability
        }
        
        
        func book()  {
            self.availability = false
            print("Booking completed")
        }
    }
    
    print("5: ", terminator: "")

    let myReservation = BnBListing(category: .house, availability: true)
    
    myReservation.book()
    
}






