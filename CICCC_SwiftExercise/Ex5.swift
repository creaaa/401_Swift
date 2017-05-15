
import Foundation

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
     
     ・ String　⇛ Character
     
     let e = "h"                       // String
     let f = Character(c)              // Character
     
    */
    
    
    // 2
    
    func combineLastCharacters(strAry: [String]) -> String {
        
        return strAry.map{ String($0[$0.index(before: $0.endIndex)]) }.joined()
        
    }
    
    print("2, ", terminator: "")

    let nonsenseArray = ["bungalow", "buffalo", "indigo", "although", "Ontario", "albino", "%$&#!"]
    
    print(combineLastCharacters(strAry: nonsenseArray))
    
    
    // 3
    
    print("Sorry, I couldn't solve...")
    
    
    let digits: CharacterSet = CharacterSet.decimalDigits

    func digitsOnly(word: String) -> Bool {
        
        for char in word.unicodeScalars {
            if !(digits.contains(UnicodeScalar(char.value)!)) {  // digit contains "7", // digit contains "3"...
                return false
            }
        }
        
        return true
    }
    
    print("どっちだ！？", digitsOnly(word: "73f6"))
    
    
    
    
    
    /*
    let hoge = NSCharacterSet(charactersIn: "8")
    
    print("ここ！", hoge.longCharacterIsMember(1))
    
    func canConvertStringToInt(str: String) -> Bool {
        
        let hoge = NSCharacterSet(charactersIn: "hoge")
        
        print("ここ！", hoge.longCharacterIsMember(8))
        
        
        
        let charSet = NSCharacterSet.decimalDigits
        
//          for char in str.unicodeScalars {
//                if charSet.longCharacterIsMember(char.value) != true {
//                    return false
//                }
//          }
        
         return true
    }
    
    // longCharacterIsMember(_:) CharacterSetのインスタンスメソッド
    
    let digits = CharacterSet.decimalDigits
    */
    
    
    
    
    // 4
    
    func sanitizeDirtyWordsArray(dirtyWordsArray ary: [String]) -> [String] {
        
        return ary.filter{ $0.characters.count != 4 }
        
    }
    
    
    let dirtyWordsArray = ["phooey", "darn", "drat", "blurgh", "jupiters", "argh", "fudge"]
    
    print("4 → ", sanitizeDirtyWordsArray(dirtyWordsArray: dirtyWordsArray))
    
    
    // 5
    
    let movies = ["Boyhood":         "Richard Linklater",
                  "Inception":       "Christopher Nolan",
                  "The Hurt Locker": "Kathryn Bigelow",
                  "Selma":           "Ava Du Vernay",
                  "Interstellar":    "Christopher Nolan"]
    
    
    class MovieArchive {
        
        func filterByDirector(movieDic: [String:String], director: String) -> [String] {
            
            return movieDic.filter{ $0.value == director }.map{ $0.key }
            
        }
    }
    
    
    let myMovieArchive = MovieArchive()
    
    print("5 → ", myMovieArchive.filterByDirector(movieDic: movies, director: "Christopher Nolan"))
    
}






