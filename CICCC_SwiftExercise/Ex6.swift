
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
    
    //: __2a.__
    //: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
    
    
    
    //:
    //: __2b.__
    //: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
    //:
    //: __2c.__
    //: Create an instance of the Peach class and call the method ripen().
    
    
}





