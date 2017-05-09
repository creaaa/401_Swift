
func execute3() {
    
    
    // ex.1 
    
    struct CuddlyCreature {}
    
    let ary1    = [CuddlyCreature]()
    let boolAry = [true, false, false, true, false]
    
    // ex.2
    
    var spaniels = ["American Cocker", "Cavalier King Charles", "English Springer", "French", "Irish Water","Papillon", "Picardy","Russian", "French", "Welsh Springer"]
    
    print("Ex.2", spaniels.count) // 10
    
    
    // ex.3
    
    var colors = ["red", "orange", "yellow", "green", "blue", "violet"]

    colors.insert("indigo", at: 5)
    
    // ["red", "orange", "yellow", "green", "blue", "indigo", "violet"]
    print("Ex.3", colors)
    
    
    // ex.4
    
    spaniels.insert("English Cocker", at: 2)
    
    // ["American Cocker", "Cavalier King Charles", "English Cocker", "English Springer", "French", "Irish Water", "Papillon", "Picardy", "Russian", "French", "Welsh Springer"]
    print("Ex.4", spaniels)
    
    
    // ex.5
    
    var olympicHosts = ["London", "Beijing","Athens", "Sydney", "Atlanta"]
    
    olympicHosts.insert("Barcelona", at: olympicHosts.count)
    
    // ["London", "Beijing", "Athens", "Sydney", "Atlanta", "Barcelona"]
    print("Ex.5", olympicHosts)

    
    

    
    
    
}
