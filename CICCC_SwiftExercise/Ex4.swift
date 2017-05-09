
func execute4() {
    
    // 1
    
    //: For each title in the array print the following string: "title + with Puppets", e.g "Point Break with Puppets!"
    
    let movieTitleArray = ["Point Break", "The Dark Knight", "Star Wars", "When Harry Met Sally"]
    
    print("1: ", terminator: "")
    
    movieTitleArray.forEach{ print("\($0) with Puppets!") }
    
    
    // 2
    
    //: Rent is increasing by 20% this year. Use a for-in loop to apply this increase to each item in the oldMountainViewRent array.  Store the new values in the array newMountainViewRent.
    
    let oldMountainViewRent:[Double] = [2150, 1775, 2221, 1261, 1325, 2110, 1870]
    var newMountainViewRent = [Double]()
    
    /*
    for eachRent in oldMountainViewRent {
        newMountainViewRent.append(eachRent * 1.2)
    }
    */
    
    newMountainViewRent = oldMountainViewRent.map{ $0 * 1.2 }
    
    print("2: ", newMountainViewRent)
    
    // 3
    
    //: For each food with a true value, print out "<food>, yum!" For each food with a false value print out, "<food>, yuck!"
    
    let polarizingFoods = ["Anchovies":true, "Coconut":true, "Cilantro":true, "Liver": false]
    
    print("3: ", terminator: "")

    polarizingFoods.forEach {
        $0.value ? print("\($0.key), yum!") : print("\($0.key), yuck!")
    }
    
    // 4
    
    //: The Oakland area code is changing from 415 to 510. Replace all occurrences of the area code 415 with 510 in the dictionary below.
    
    var rapperPhoneNumbers = ["Azealia Banks":"(212)548-8777", "Boots Riley":"(415)755-9887", "MC Hammer":"(415)533-9899", "Missy Elliot":"(757)488-5552", "Shock G":"(415)499-7676", "Sir Mix-a-lot":"(206)123-4567", "Snoop Dogg":"(213)760-6664"]
    
    rapperPhoneNumbers.forEach {
        rapperPhoneNumbers[$0.key] = $0.value.replacingOccurrences(of: "415", with: "510")
    }
    
    print("4: ", rapperPhoneNumbers)
    
    // 5
    
    enum Sport {
        case baseball, basketball, football, hockey, soccer
    }
    
    let sport = Sport.baseball
    
    print("5: ", terminator: "")
    
    switch sport {
        case .baseball:
            print("Go A's!")
        case .basketball:
            print("Go Warriors!")
        case .football:
            print( "Go Raiders!")
        case .hockey:
            print("Go Sharks!")
        case .soccer:
            print("Go Earthquakes!")
    }
    
    // 6
    
    enum roshamboMove {
        case rock, paper, scissors
    }
    
    let myMove:   roshamboMove = .scissors
    let yourMove: roshamboMove = .rock
    
    // var resultsMessage = ""
    
    print("6: ", terminator: "")

    switch (myMove, yourMove) {
        
        case (.rock, .scissors), (.scissors, .rock):
            print("Paper covers Rock.")
        case (.scissors, .paper), (.paper, .scissors):
            print("Scissors cut Paper.")
        case (.paper, .rock), (.rock, .paper):
            print("Paper covers Rock.")
        case (.rock, .rock), (.scissors, .scissors), (.paper, .paper):
            print("It's a tie!")
        
    }
    
    
    // 7
    
    let score = 35
    let letterGrade: String
    
    /*
    if 90...100 ~= score {
        letterGrade = "A"
    } else if 80...89 ~= score {
        letterGrade = "B"
    } else if 70...79 ~= score {
        letterGrade = "C"
    } else if 60...69 ~= score {
        letterGrade = "D"
    } else {
        letterGrade = "Incomplete"
    }
    */
    
    switch score {
        
        case 90...100:
            letterGrade = "A"
        case 80...89:
            letterGrade = "B"
        case 70...79:
            letterGrade = "C"
        case 60...69:
            letterGrade = "D"
        case _:
            letterGrade = "Incomplete"
        
    }
    
    print("7: ", terminator: "")
    print(letterGrade)
    
    // 8
    
    //: The if-else statement below translates a word into Pig Latin. Without using the "vowels" array, write an equivalent switch statement.
    
    var target = "absolute"
    let firstLetter = target[target.startIndex]
    var newWord = ""
    
    /*
    var vowels: [Character] = ["a", "e", "i", "o", "u"]
    
    if vowels.contains(firstLetter) {
        newWord = target + "yay"
    } else {
        target.remove(at: target.startIndex) // ello
        newWord = "\(target)\(firstLetter)ay" // ellohay
    }
    */
    
    switch firstLetter {
        case "a", "e", "i", "o", "u":
            newWord = target + "yay"
        default:
            target.remove(at: target.startIndex)
            newWord = "\(target)\(firstLetter)ay"
    }
    
    print("8: ", terminator: "")
    print(newWord)
    
}


