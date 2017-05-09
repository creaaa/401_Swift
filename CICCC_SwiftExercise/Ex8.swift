
// for 1

protocol Babysitter {
    func playCandyland(_ numberOfTimes: Int)
    func read(_ book: String, firstLine: String, asleep: Bool) -> Bool
}

// for 2

enum Size {
    case tiny, small, medium, large, xLarge
}

protocol Adorable {
    
    var size: Size { get }
    var softFur: Bool { get }
    
    func frolick()  // たわむれる
    func curlIntoSmallBall() // 体を小さなボールのように丸める
}

// for 3

protocol Mover {
    
    var willWorkForPizzaAndBeer: Bool { get }

    func goHiking() -> String
    func comeOverForDinner() -> String
    func carryCouch() -> String
    func loadVan(_ empty: Bool) -> Bool
    
}

// for 4

// 食料の蓄え・貯蔵品
protocol Hoarder {
    func cache(_ foodItem: String) -> String  // n: 隠したもの・貯蔵庫, v: たくわえる
    func pilfer() -> String // くすねる・こそどろする
}

// for 5

protocol Souschef {  // スー・シェフ = 調理場の副責任者；料理長の次に位置する人
    func chop(_ vegetable: String) -> String
    func rinse(_ vegetable: String) -> String
}

class Roommate {
    var hungry = true
    var name: String
    
    init(hungry: Bool, name: String) {
        self.hungry = hungry
        self.name = name
    }
}

extension Roommate: Souschef {
    func chop(_ vegetable: String) -> String {
        return "She's choppin' \(vegetable)!"
    }
    
    func rinse(_ vegetable: String) -> String {
        return "The \(vegetable) is so fresh and so clean"
    }
}

// for 6

/* It works anyway
 
extension UIColor {
    
    convenience init(redValue: Int, greenValue: Int, blueValue: Int) {
        
        let newRed   = CGFloat(Double(redValue)   / 255.0)
        let newGreen = CGFloat(Double(greenValue) / 255.0)
        let newBlue  = CGFloat(Double(blueValue)  / 255.0)
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: CGFloat(1.0))
    }
    
    
    // 直上で定義したイニシャライザ、いきなり使えるんか。。。
    class func pistachio() -> UIColor {
        return UIColor(redValue: 147, greenValue: 197, blueValue: 114)
    }
}
*/


//: Extend the Minion class so that it conforms to the DirtyDeeds protocol.
protocol DirtyDeeds {
    func cheat()
    func steal()
}


class Minion { // お気に入り・手先・子分
    
    var name: String
    
    
    init(name:String) {
        self.name =  name
    }
    
}

extension Minion: DirtyDeeds {
    
    func cheat() {
        print("👴 > I love Cheating.")
    }

    func steal() {
        print("👴 > Stealing- it's a piece of cake.")
    }
    
}


func execute8() {
    
    // 1
    
    class Teenager: Babysitter {
        
        enum Level {
            case low, medium, high
        }
        
        var age: Int
        let responsible: Bool
        let patience: Level
        
        
        init(age: Int, responsible: Bool, patience: Level) {
            self.age = age
            self.responsible = responsible
            self.patience = patience
        }
        
        
        func playCandyland(_ numberOfTimes: Int) {
            
            (1...numberOfTimes).forEach{ _ in print("Finish! Did you have a fun?") }
            
        }
        
        @discardableResult
        func read(_ book: String, firstLine: String, asleep: Bool) -> Bool {
            
            print("☺ > Today, I'm gonna read '\(book)'.")
            print("☺ > \(firstLine)...")
            
            return true
        }
        
    }
    
    print("1 >")
    
    let myTeenAger = Teenager(age: 14, responsible: true, patience: .low)
    
    myTeenAger.read("Bear Poo", firstLine: "'I want a honey', Poo said.", asleep: true)

    
    // 2
    
    class Animal: Adorable {
        
        let species: String
        let numberOfLegs: Int
        
        let size: Size  = .small
        let softFur = true
        
        
        init(species: String, numberOfLegs: Int) {
            self.species = species
            self.numberOfLegs = numberOfLegs
        }
        
        
        func frolick() {
            print("♪♪♪♪♪♪😸♪♪♪♪♪♪")
        }
        
        func curlIntoSmallBall() {
            print("😸 > Now my body is vary round like a small ball.")
        }
        
    }
    
    
    print("2 >")
    
    let myCat = Animal(species: "Cat", numberOfLegs: 4)
    myCat.frolick()
    myCat.curlIntoSmallBall()
    
    
    // 3
    
    class Friend: Mover {
        
        var reliability: Int
        var likesYou:    Bool
        
        let willWorkForPizzaAndBeer: Bool
        
        
        init (reliability: Int, likesYou: Bool, willWorkForPizzaAndBeer: Bool) {
            self.reliability             = reliability
            self.likesYou                = likesYou
            self.willWorkForPizzaAndBeer = willWorkForPizzaAndBeer
        }
        
        
        func goHiking() -> String {
            return "Let's go to the Redwoods!"
        }
        
        func comeOverForDinner() -> String {
            return "Your stew is the best!"
        }
        
        func carryCouch() -> String {
            return "Here, I'll walk backwards down the stairs and hold the heavy end."
        }
        
        func loadVan(_ empty: Bool) -> Bool {  // ワゴンに荷物を積む
            
            print("We can totally fit a king size bed in here.")
            
            var isEmpty = empty
            
            // 作業失敗したからここでemptyにできなかった、ってこと
            isEmpty = false
            
            return isEmpty
        }
    }
    
    
    print("3 >")
    
    let myFriend = Friend(reliability: 2, likesYou: false, willWorkForPizzaAndBeer: false)
    
    print(myFriend.goHiking())
    print(myFriend.comeOverForDinner())
    print(myFriend.carryCouch())
    print(myFriend.loadVan(true))
    
    
    // 4
    
    class Squirrel: Hoarder {
        
        
        struct Tail {
            let lengthInCm: Double
            let bushiness:  Int // ふさふさした・毛深い
        }
        
        
        let justTryinToGetANut = true
        let bushyTail: Tail
        
        
        init(bushiness: Int, length: Double) {
            self.bushyTail = Tail(lengthInCm: 20, bushiness: 10)
        }
        
        
        func scurry() -> String {
            return "Run away!"
        }
        
        
        func cache(_ foodItem: String) -> String {
            return "I'll be back for you later, little \(foodItem)s."
        }
        
        
        func pilfer() -> String {
            return "Jackpot! Your stash is mine!" // jackpot! = 大当たり！, stash = 隠したもの
        }
        
    }
    

    // 青い鳥の名前
    
    class ScrubJay: Hoarder {
        
        let wings = 2
        let female: Bool
        
        init(female: Bool) {
            self.female = female
        }
        
        
        func fly() -> String {
            return "Swoop!"
        }
        
        func cache(_ foodItem: String) -> String {
            return "🐦 > Hey, sleep for a while, \(foodItem). I'll pick you up later..."
        }
        
        func pilfer() -> String {
            return "🐦 > Here I came! I'm gonna take your precious stuff..."
        }
        
    }
    
    
    print("4 >")

    
    let myScrubJay = ScrubJay(female: false)
    
    print(myScrubJay.cache("caterpillar"))
    print(myScrubJay.pilfer())
    
    
    // 5
    
    // ようはこれ、「エクステンションを使うことによる、クラスのプロトコルへの準拠」の例だ。
    
    /*
     
     extension クラス名: プロトコル名 {
        // プロトコルが要求する要素の定義
     }
     
     */

    
    print("5 >")
    
    let myRoomMate = Roommate(hungry: true, name: "Salah")
    
    //　そうすることで、クラス定義の中でプロトコル準拠しなくてもコンパイルエラーを回避でき、メソッドを呼び出せる
    print(myRoomMate.chop("carrot"))
    print(myRoomMate.rinse("pumpkin"))
    
    
    let myMinion = Minion(name: "Kossak")
    
    myMinion.cheat()
    myMinion.steal()
    
    
    // 6
    
    // I defined above
    
    

    
    
    
}
















