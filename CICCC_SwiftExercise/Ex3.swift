
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

    
    // ex.6
    
    var admitted = ["Jennifer", "Vijay", "James"]
    var waitingList = ["Lyla", "Daniel", "Isabel", "Eric"]
    
    waitingList.removeSubrange(0...1)
    
    print("Ex.6: ", waitingList)
    
    admitted.append(contentsOf: ["Lyla", "Daniel"])

    print("Ex.6: ", admitted)
    
    
    // ex.7
    
    print("Ex.7", admitted[2], admitted[3])
    
    // ex.8
    
    let myDict = [String:Bool]()
    
    // Initialize a dictionary using array literal syntax. The keys should be the Strings: "Anchovies", "Coconut", "Cilantro", "Liver"  and each value should be a Bool representing whether you like the food or not.
    
    let myDict2 = ["Anchovies": true, "Coconut": false, "Cilantro": false, "Liver": true]
    
    // ex.9
    
    var presidentialPetsDict = ["Barack Obama":"Bo", "Bill Clinton": "Socks", "George Bush": "Miss Beazley", "Ronald Reagan": "Lucky"]
    
    presidentialPetsDict["George H. W. Bush"] = "Millie"
    presidentialPetsDict["Ronald Reagan"]     = "Lucky"
    
    print("ex.9", presidentialPetsDict)
    
    // ex.10
    
    presidentialPetsDict.removeValue(forKey: "George Bush")
    presidentialPetsDict["George W. Bush"] = "Barney"
    
    print("ex.10", presidentialPetsDict)
    
    // ex.11
    
    presidentialPetsDict["Bill Clinton"] = "Buddy"
    
    print("ex.11", presidentialPetsDict)
    
    // ex.12
    
    if let obamaDog = presidentialPetsDict["Barack Obama"] {
        print("Ex.12", "Michele Obama walks \(obamaDog) every morning.")
    }
    
    // ex.13
    
    var studioAlbums = ["Led Zeppelin":1969, "Led Zeppelin II": 1969, "Led Zeppelin III": 1970, "Led Zeppelin IV": 1971, "Houses of the Holy":1973, "Physical Graffiti": 1975, "Presence":1976, "In Through the Out Door":1979, "Coda":1982]
    
    print("Ex.13", studioAlbums.count)
}












