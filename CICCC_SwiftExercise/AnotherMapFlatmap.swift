
struct AnotherMapFlatmap {
    
    
    func execute() {

        
        // 【配列編】
        
        let ary1 = ["2", "3", "four", "5"]
        
        let result1 = ary1.map{ Int($0) }
        let result2 = ary1.flatMap{ Int($0) }
        
        // print(result1)  // [Optional(2), Optional(3), nil, Optional(5)]

        
        // let result2 = ary1.flatMap{ Int($0) }
        // print(result2)  // [2, 3, 5] 結果が非オプショナルになっているだけでなく、結果がnilの場合棄却される点にも注目
        
        
        // 【オプショナル編】
        
        let str2: String? = "42"
        
        // この時点で、 $0 は、String型(String?型ではない)になっている点に注意。
        // だから Int()の引数にできるんだ。(String?なら渡せないからね)
        let result3 = str2.map{ Int($0) }
        
        // ただしこの場合、残念ながら、結果はInt??型になってしまう
        // print(result3) //  Optional(Optional(42))
        
        
        // そこでflatMapですよ
        
        
        let result4 = str2.flatMap{ Int($0) }  // flatMapなら、Int?型
        // print(result4) // Optional(42)
        
        
        
        // 「クロージャーがOptionalを返さない場合はどちらも同じ結果になる」、とおぼえよう
        var value: Int?
        
        value = nil
        value.map { $0 + 1 } // → nil
        value = 1
        value.map { $0 + 1 } // → Optional(2)
        
        
        value = nil
        value.flatMap { $0 + 1 } // → nil // この場合はnilは棄却されない。nilが棄却されるのは、Array用のflatMapだけだから？？
        value = 1
        value.flatMap { $0 + 1 } // → Optional(2)
        
        
        /*
         ＿人人人人人人人人人人人人人＿
         ＞　正しくやるにはこうじゃ　＜
         ￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣
         */
        
        
        // この時点で strは String型(String?型ではない)になっている点に注意。
        // だから Int()の引数にできるんだ。(String?なら渡せないからね)
        //let result5 = str2.flatMap{ str in
        //    Int(str).flatMap{  // optional(42)
        //         print(Int($0)) // 42
        //    }
        //}
        
        
        let num: Int? = 32
        
        guard let no = num, no > 20 else {  // guard whereという句はない。 , で条件を指定。覚えろ
            fatalError()
        }
    }
}



