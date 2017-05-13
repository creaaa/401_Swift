


// doesn't work
extension CustomStringConvertible where Self == [Array<Int>] {
    var description: String { return "hogehoge--" }
}


// Array where Element == Array<Int>
// Array where Iterator.Element == Array<Int>

extension Array where Element == Array<Int> {
    
    func superPrint() -> String {
        
        var result = ""
        
        for eachAry in self {
            /*
             for elem in eachAry {
             result += elem.description
             result += ", "
             }
             */
            
            result += eachAry.description
            result += ",\n"
            
        }
        
        return result
    }
    
    
}




let array = [[1,2,3], [4,0,6], [7,8,9]]

func convert(_ target: [[Int]]) -> [[Int]] {
    
    var target = target
    
    for (idx1, value1) in target.enumerated() {
        
        for (idx2, value2) in value1.enumerated() {
            
            if value2 == 0 {
                
                // "vertical" conversion
                for column in 0..<value1.count {
                    target[column][idx2] = 0
                }
                
                // "horizontal" conversion
                target[idx1] = Array(repeating: 0, count: value1.count)
                
            }
        }
    }
    
    return target
    
}


// print(convert(array).superPrint())



// let aaa = [[1], [2], [3]]
// print(aaa.superPrint())



