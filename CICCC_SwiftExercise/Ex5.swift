
func execute5() {
    
    // 1
    
    var str = "HelloWorld"
    
    print("1, ", terminator: "")
    
    str.characters.remove(at: str.startIndex) // destructive
    print(str)
    
 
    // same
    /*
    print(String(str.characters.dropFirst())) //　※dropFirstの場合は、その返り値をStringに変換しなければいけない
    */
    
    
    // 2 ways to get last character's index (both result in same)
    
    // case 1
    // let lastCharIdx = str.index(before: str.endIndex)
    
    // case 2
    // let lastCharIdx = str.index(str.endIndex, offsetBy: -1) //str.endIndex
    
    // str.characters.remove(at: lastCharIdx)
    
    // print(str)
    
    
    // so, "bologna" is gonna be...
    
    let bologna = "bologna"
    
    let lastCharacterIdx = bologna.index(before: bologna.endIndex)
    

    print("Last character: ⇛", bologna[lastCharacterIdx])
    
    
    /*
    
     conversion: String ⇔ Character
     
     ・ Character ⇛ String
     
     let c = bologna[lastCharacterIdx] // Character
     let d = String(c)                 // String
     
     
     
     
    */
    
    
    
    
    
    // 2
    
    func combineLastCharacters(strAry: [String]) -> String {
        
        return strAry.map{ str -> String in
            
            let lastCharIdx = str.index(before: str.endIndex)

            return String(str[lastCharIdx])
            
        }.joined()
    }
    
    print("2, ", terminator: "")

    let nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]
    
    print(combineLastCharacters(strAry: nonsenseArray))
    
    
    // 3
    
    

    
    
    
}
