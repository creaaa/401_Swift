
import Cocoa

func execute2() {

    // Ex.1
    
    var moviesDict: Dictionary = ["Star Wars":"George Lucas", "Point Break":"Kathryn Bigelow"]
    var movie = "Point Break"
    let director = moviesDict[movie]
    
    if let director = director {
        print("Ex1: ", director)
    }
    
    movie = "Zootopia"
    moviesDict[movie] = "Byron Howard & Rich Moore"
    
    
    if let zootopia = moviesDict[movie] {
        
        print("Ex1: ", zootopia)
        
    }
    
    
    // Ex.2
    
    // declare in UITextField!
    
    
    // Ex.3
    
    let numericalString = "3"
    
    if let number = Int(numericalString) {
        print("Ex.3: ", "\(number) is the magic number.")  // 3
    }
    
    let numericalString2 = "three"
    
    if let number = Int(numericalString2) {
        print("Ex.3: ", "\(number) is the magic number.")  // not be executed
    }
    
    // Ex.4
    
    /*
    var viewController = UIViewController()
    
    if let tabBar = viewController.tabBarController {
        print("Here's the tab bar.")
    } else {
        print("No tab bar controller found.")
    }
    */
    
    
    // Ex.5
    
    var paintingDict:Dictionary = [ "Guernica":"Picasso", "Mona Lisa": "da Vinci", "No. 5": "Pollock"]
    var painting = "Mona Lisa"
    
    var artist = paintingDict[painting]
    
    
    if let artist = artist {
        print("Ex.5: ", artist)
    }
    
    painting = "Les Nymphéas"
    paintingDict[painting] = "Claude Monet"
    
    artist = paintingDict[painting]
    
    if let artist = artist {
        print("Ex.5: ", artist)
    }
    
    
    // Ex.6
    
    /*
    var anotherViewController = UIViewController()
    var cancelButton: UIBarButtonItem!
    cancelButton = UIBarButtonItem()
    
    cancelButton.width = 200
     
    anotherViewController.navigationItem.leftBarButtonItem = cancelButton
    */
    
    
    // Ex.7
    
    /*
    if let parent = viewController.parent {
        print(parent)
    }
    */
    
}


