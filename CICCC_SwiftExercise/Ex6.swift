
func execute6() {
    
    // 1
    
    struct Tail {
        let lengthInCm: Double
    }
    
    class Animal {
        
        var species: String = ""
        let tail: Tail
        
        init(tail: Tail) {
            self.tail = tail
        }
        
        convenience init(species: String, tail: Tail) {
            self.init(tail: tail)
            self.species = species
        }
        
    }
    
    let cat = Animal(species: "Cat", tail: Tail(lengthInCm: 24))
    let dog = Animal(species: "Dog", tail: Tail(lengthInCm: 7))
    let unknownAnimal = Animal(tail: Tail(lengthInCm: 81))
    
    print("1", terminator: "")
    
    print(cat.species)
    print(dog.tail)
    print(unknownAnimal.species, unknownAnimal.tail)
    
    
    // 2
    
    class Peach {
        
        static let varieties = [Peach(variety: "Hakutou", softness: 4)]
        
        let variety: String
        
        // Softness is rated on a scale from 1 to 5, with 5 being the softest
        var softness: Int
        
        init(variety: String, softness: Int) {
            self.variety = variety
            self.softness = softness
        }
        
        
        func ripen() -> String {
            
            self.softness += 1
            
            return softness >= 4 ? "riped" : "not riped"
            
        }
        
    }
    
    let myPeach = Peach(variety: "Akatsuki", softness: 3)
    print("Ex2", myPeach.ripen())  // riped
    
    
    // 3
    
    //　var theFluffiestDog = UIImage(named:"fluffyDog")!
    
    class FluffyDog {
        
        let name:        String
        let fluffiness:  Int
        let droolFactor: Int
        
        var cuddlability: Int {
            return fluffiness * droolFactor
        }
        
        
        init(name: String, fluffiness: Int, droolFactor: Int) {
            self.name = name
            self.fluffiness = fluffiness
            self.droolFactor = droolFactor
        }
        
        func chase(_ wheeledVehicle: String)-> String {
            return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
        }
    }
    
    print("Ex3: ", terminator: "")

    let myFluffyDog = FluffyDog(name: "Pochi", fluffiness: 4, droolFactor: 3)
    
    print(myFluffyDog.chase("T-Rex 16STM"))
    
    print(myFluffyDog.cuddlability)
    
    
    // 4
    
    class ChattyDog {
        
        enum Size: Int {
            case small
            case medium
            case large
        }
        
        let name: String
        let breed: String
        let size: Size
        
        init(name: String, breed: String, size: Size) {
            self.name = name
            self.breed = breed
            self.size = size
        }
        
        /*
        func bark() -> String {
            
            switch size {
                case .small:
                    return "Can-Can."
                case .medium:
                    return "Bow-wow."
                case .large:
                    return "Wo-Wo-Wo-Wowooooon!!"
            }
        }
        */
        
        static func speak() -> String {
            return "Hi, love me tender🐾"
        }
        
    }
    
    print("Ex4: ", terminator: "")
    
    // let myChattyDog = ChattyDog(name: "Royal", breed: "Chihuahua", size: .large)
    
    // print(myChattyDog.bark())
    
    print(ChattyDog.speak())
    
    
    // 5
    
    class House {
        
        enum Quality: Int {
            case poor, fair, good, excellent
        }
        
        enum NaturalDisaster {
            case earthquake, wildfire, hurricane
        }
        
        
        var numberOfBedrooms: Int = 0
        let location: Quality
        
        var worthyOfAnOffer: Bool {
            
            if location.rawValue ~= 3 { 
                return true
            } else if 1...2 ~= location.rawValue {
                return numberOfBedrooms >= 3 ? true : false
            }
            
            return false
            
        }
        
        init(location: Quality) {
            self.location = location
        }
        
        convenience init(NoB: Int, location: Quality) {
            self.init(location: location)
            self.numberOfBedrooms = NoB
        }
        
        
        func willStayStanding(_ naturalDisaster:NaturalDisaster) -> Bool {
            
            switch naturalDisaster {
                
                case .earthquake:
                    return true
                case .wildfire:
                    return true
                case .hurricane:
                    return false
                
            }
        }
    }
    
    print("Ex5: ", terminator: "")
    
    let myHouse1 = House(NoB: 2, location: .excellent)
    
    print(myHouse1.willStayStanding(.wildfire))
    
    print(myHouse1.worthyOfAnOffer)
    
}





