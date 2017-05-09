
//: # Lesson 1 Exercises
//: ## String Manipulation

import Foundation


func execute1() {

    //: ### Exercise 1
    //: Example: Here I've declared one String that forms a sentence that makes sense. I've declared a second String that forms a silly sentence when random words are chosen.
    let nounArray = ["puppy", "laptop", "ocean","app", "cow", "skateboard", "developer", "coffee", "moon"]

    let index1 = Int(arc4random_uniform(9))
    let index2 = Int(arc4random() % 9)

    let sentence = "The \(nounArray[6]) spilled her \(nounArray[7])."
    let sillySentence = "The \(nounArray[index1]) jumped over the \(nounArray[index2])."
    //: Now try it yourself! Declare a new string that incorporates objects from the noun array above. Write one sentence that makes sense and one "Madlib" sentence with randomly chosen words. Feel free to add words to the noun array or declare a new array.
    let yourSentence = "The \(nounArray[6]) made an \(nounArray[3]) about the \(nounArray[0]) in the \(nounArray[8])."

    
    // The developer made an app about the puppy in the moon.
    print("Ex1: " + yourSentence)

    let yourSillySentence = "The \(nounArray[1]) forgot the \(nounArray[2]). Otherwise \(nounArray[4]) to save both \(nounArray[5]) and \(nounArray[7])."
    
    // The laptop forgot the ocean. Otherwise cow to save both skateboard and coffee.
    print("Ex1: " + yourSillySentence)

    //: ### Exercise 2
    //: Recreate the shoutString by using the didYouKnowString as a stem.
    let didYouKnowString = "Did you know that the Swift String class comes with lots of useful methods?"
    let whisperString = "psst" + ", " + didYouKnowString.lowercased()
    let shoutString =  "HEY! DID YOU KNOW THAT THE SWIFT STRING CLASS COMES WITH LOTS OF USEFUL METHODS?"

    
    // Yikes!! DID YOU KNOW THAT THE SWIFT STRING CLASS COMES WITH LOTS OF USEFUL METHODS?It's perfectly cool!
    print("Ex2: " + "Yikes!! " + didYouKnowString.uppercased() + "It's perfectly cool!")

    
    

    //: ### Exercise 3
    //: How many characters are in this string?
    let howManyCharacters = "Hello. I am a 😸 who don't have a name."
    print("Ex3: ", howManyCharacters.characters.count)  // 38

    //: ### Exercise 4
    //: How many times does the letter "g" or "G" appear in the following string? Use a for-in loop to find out!
    
    /*
     let gString = "Gary's giraffe gobbled gooseberries greedily"
     var count = 0
     for char in gString.characters {
     if (char == "g" || char == "G") {
     count += 1
     }
     }
     */

    
    // way 1
    
    let sString = "sea sells seashells by the seashore"

    var count = 0

    /*
    for char in sString.characters {
        
        if char == "s" || char == "S" {
            count += 1
        }
        
    }

    print(count)  // 8
    */
    
    
    // way 2
    
    sString.characters.forEach {
        if $0 == "s" || $0 == "S" {
            count += 1
        }
    }
    
    print("Ex4: ", count)  // 8
    
    
    // Ex 5
    
    let word = "What a wonderful world."
    print("Ex5: ", word.contains("hell"))
    
    
    // Ex.6
    let sString2 = "sea sells seashells by the seashore"
    
    let res = sString2.replacingOccurrences(of: "s", with: "S")
    
    // It turned out it's NOT destructive
    // Sea SellS SeaShellS by the SeaShore
    print("Ex6: ", res)

    
    // Ex.7
    
    let sillyMonkeyString = "A monkey stole my iPhone"

    let dictionary = ["monkey": "🐒", "iPhone":"📱"]
    var output: String = ""
    
    var newestString = sillyMonkeyString
    
    for (key, value) in dictionary {
        newestString = newestString.replacingOccurrences(of: key, with: value)
    }
    
    print("Ex7: ", newestString)
    
    
    // Ex.8
    
    let numOfPennies = 567
    
    let dollar = "$" + "\(Float(numOfPennies) / 100.0)"

    // $5.67
    print("Ex8: ", dollar)
    
    
    // Ex.9
    
    let array = ["A", "13", "B", "5", "87", "t", "41"] // TODO: Choose constant or variable
    
    /*
    var sum = 0 // TODO: Choose constant or variable
    
    for string in array {
        if Int(string) != nil {
            let intToAdd = Int(string)! // TODO: Choose constant or variable
            sum += intToAdd
        }
     }
    */
    
    
    // the code above is not Swifty way at all, so I re-wrote it
    
    let result = array.flatMap{ Int($0) }.reduce(0, +)
    
    print("Ex9: ", result) // 146
    
    
    // Ex. 10
    
    let startTime:          Int
    var currentTime:        Int
    let maximumTimeAllowed: Int
    var timeRemaining:      Int
    
    let creditLimit: Int
    var balance:     Int
    
    
    // Ex. 11
    
    let stringToReverse = "Mutable or Immutable? That is the question."
    var reversedString = ""
    
    for character in stringToReverse.characters {
        reversedString = "\(character)" + reversedString
    }
    
    print("Ex11: ", reversedString)
    
    

    let reversed = Array(stringToReverse.characters.reversed()).map({String($0)})
    
    
    
    
}
















