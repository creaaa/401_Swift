
struct DeeperMap {

    func execute() {
        
        /* Topic 1 */
        
        // Array<T>の場合  [T]
        
        let ary1: Array<Int> = [1,2,3]

        _ = ary1.map{ $0 * 2 }
        
        
        // Array<Optional<Wrapped>> の場合   [T?]
        
        let ary2: Array<Optional<Int>> = [1,2,nil,4]
        
        // let res1 = ary2.map    { $0 * 2 }  // これはできない。∵ nil * 2 という演算は不可能だからだ。
        // let res2 = ary2.flatMap{ $0 * 2 }  // 当然 flatMap であってもできない
        
        
        /* Topic 2 */

        // Optional<Array<T>> の場合   [T]?
        
        let ary3: [Int]? = [1,2,3]
        
        // ary3.map{ $0 * 2 }       // $0 = 配列。 "配列"に対して 乗算ができないのは当然だよなぁ!?
        
        // ary3.flatMap{ $0 * 2 }   // 当然 flatMap も同じ
        
        let res1: Optional<Array<Int>> = ary3.map{ $0.map{ $0 * 2 } }  // Optional([2, 4, 6])
        
        // print(ary3.map{ $0 })       // Optional([1, 2, 3])
        // print(ary3.flatMap{ $0 })   // Optional([1, 2, 3])
        
        
        // どんだけ繋いでも結果は同じ。
        let a: [Int]? = ary3.map{ $0 }.map{ $0 }.map{ $0 } // Optional([1, 2, 3])

        
        // 配列の値に対して演算したいなら...正解はこうじゃ
        let hoge = ary3.map{ int -> [Int] in
            let ary: [Int] = int.map{ $0 * 2 }
            // print(ary) // [2,4,6]
            return ary
        }
        
        
        // mapの内部では ary = [2,4,6]だったけど、返るときは Optional([2,4,6]) なっとる！
        // ちなみに、↑ を ary3.flatMap にしたとしても、結果は変わらんよ。不思議なことに。
        // その理由だけど、たぶん、 map() / flatMap() の返り値は非オプショナルなので、
        // "失敗しない処理"扱いとなるので、結果が変わらない = 結果的にはflat化は発動しない
        // flat化する時 = クロージャ内の返り値がオプショナルの(失敗しうる)とき
        
        // print(hoge)  // Optional([2, 4, 6])
        
        
        /* Topic 3 */

        // Optional<Array<Optional<Wrapped>>> の場合  [T?]?
        
        let ary4: [Int?]? = [1, 2, nil, 4, 5]
        
        // ary4.map{ $0 * 2 }  // できない
        
        let result = ary4.map{ $0.flatMap{ $0.map{$0 * 2} } }
        
        let res = result.flatMap{$0}
        

        /* Topic 4 */
        
        // Array<Optioal<Array<T>>> の場合          [[T]?]
        
        // まずこれ覚えとけ。 ArrayのflatMapは繋げていくだけで、箱を1つずつ開示していく
        let weirdAry: [[[[[Int]]]]] = [[[[[42]]]]]
        let r = weirdAry.flatMap{$0}.flatMap{$0}.flatMap{$0}.flatMap{$0}
        r.first.map{ $0 + 1 }  // Optional(43)
        
        
        // あ、そうそう、
        let weirdOptional: Optional<Optional<Optional<Optional<Optional<Int>>>>> = 42
        weirdOptional?.flatMap{$0}
        
        
        let nougat: Int??? = 42
        let pero:   Int?   = nougat?.flatMap{$0}  // オプショナルチェーンで1個、flatMapで1個。
                                                  // 計2個 ? がアンラップされる、ってことか？
        
        // まぁ、そんなこともふまえまして,,,
        
        let ary5: [[Int]?] = [[127]]
        
        let hog = ary5.flatMap{$0}.map{ $0.first.map{ $0 + 1 } }
        
        print(hog)
        
        
        // この違いはわかるか？
        let abc = ary5.map{$0}      // [ Optional([127]) ]
        let def = ary5.flatMap{$0}  // [ [127]           ]

        print(abc, def)
        
        
        
        // 以下、番外編。
        
        let pee = [1, nil, 3, nil, 5]
        
        let paa = pee.flatMap{$0} // [1,3,5]。なお、このpooの型推論は [Int]. 
                                  // つまり、コンパイラはflatMapの結果、nilが完全排除されることを知っている。
                                  // ...かのように思えた。だが！！！
        
        let poo: [Int?] = pee.flatMap{$0}  // [Optional(1), nil, Optional(3), nil, Optional(5)]
                                           // ...え？型を明示的に書くと、結果が変わっている...だと！？
     
        
        let value: String? = "hoge"
        
        let r1: Int?? = value.map{ Int($0) }  // Optional(nil)
        let r2: Int?  = value.flatMap{ Int($0) } // nil
        
        print(r1)
        print(r2)
        
    }
}

