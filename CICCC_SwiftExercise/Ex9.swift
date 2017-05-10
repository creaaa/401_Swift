
func execute9() {
    
    // 1&2
    
    print("1&2 >\n")
    
    let surnames = ["Silverman", "Fey", "Whig", "Schumer", "Kaling"]
    
    
    // same
//    let orderedSurnamesAsc0 = Array(surnames.sorted().reversed())  // needs conversion to Array<>
//    
//    let orderedSurnamesAsc1 = surnames.sorted(by: >)
    let orderedSurnamesAsc2 = surnames.sorted{ $0 > $1 }
    
    
//    print(orderedSurnamesAsc0)
//    print(orderedSurnamesAsc1)
    print(orderedSurnamesAsc2)
    
    
    let battingAverages = [0.302, 0.556, 0.280, 0.500, 0.281, 0.285]
    
    let sortedAverages = battingAverages.sorted{ $0 < $1 }
    
    print(sortedAverages)

    
    // 3
    
    
    print("3 >\n")

    let numbersAsStrings = ["685", "1728", "648", "87", "979", "59175432"]

    /*
    let result = numbersAsStrings.filter{ num in  // num -> Bool in の略
        Int(num)! % 12 == 0
    }
    
    print(result)
    */
    
    let result2 = numbersAsStrings.filter{ Int($0)! % 12 == 0 }
    
    print(result2)
    
    
    
    // 4
    
    print("4 >\n")
    
    let particleSizesInMicrons = [150, 16, 82, 30, 10, 57]

    let filteredParticle = particleSizesInMicrons.filter{ $0 < 20 }
    
    print(filteredParticle)
    
    
    // 5
    
    print("5 >\n")
    
    /*
    let sizesAsStrings = particleSizesInMicrons.map({ (size: Int) -> String in
        return "\(size) microns"
    })
    */
    
    let sizesAsStrings = particleSizesInMicrons.map { "\($0) microns" }
    print(sizesAsStrings)
    
    
    // 6
    
    print("6 >\n")

    // 1ルピー = 0.015ドル, 1ドル = 64.8ルピー
    
    let pricesInRupees: [Double] = [750, 825, 2000, 725]
    
    // let pricesInDollars = pricesInRupees.map{ Int($0 * 0.015) }.map{ "$\(String($0))" } // less readable
    
    let pricesInDollars = pricesInRupees.map{ Int($0 * 0.015) }.map{ "$" + String($0) }
    
    print(pricesInDollars)
    
}

