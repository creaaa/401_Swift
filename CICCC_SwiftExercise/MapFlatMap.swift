
import Foundation


// 「力試し」

// 1

let a: Int? = 3


// mapの $0 は、開示された値になる
// $0 が nil の場合、クロージャの演算は適用されない、という点に注意。
// (通常ではありえない nilの二乗を実行している！ というわけではない。「そもそも二乗計算は行われていない」が正しい。
let result1: Int? = a.map{ $0 * $0 }



/*
 
 Optional<T> の　map　の定義はこうじゃ
 
 func map<U>(f: T -> U) -> Optional<U>
 
 
 [挙動]
 
 もし箱の中身が
 - 空（ nil ）だったら空の箱（ nil ）を返す (= 渡した関数は実行されない)
 - 箱に値が入っていたら、その値を渡された関数 f に適用する
 
 最後に、適用した結果を [新しい箱] に詰めて返す
 
 */



/*
 
 2
 
 array: [Int]? があるとき、 array の最初の要素を取得したい。
 ただし、 array が nil か、最初の要素が存在しない（ Array が空の ) 場合は nil を得たい。
 （ヒント： [Int] は first: Int? というプロパティを持つ。 first は最初の要素が存在しない場合は nil を返す。）
 
 */

let ary: Optional<Array<Int>> = [3,5,2,1,4]  // [Int]? = Optinal<Array<Int>>


// 解答
// ary は本来、 first プロパティを持っていない。
// (∵ aryはあくまで Optional<Array<Int>> であり、Array<Int> でないからだ)

// そこでオプショナルチェイニングですよ。

let result2 = ary?.first  // これはいける。 ?でチェインすれば、それを"開示された値" とみなせる


/*
 
 3.
 
 x: Double? があるとき、 x の平方根を計算したい。
 ただし、 x が nil または負の数の場合は nil を得たい。
 なお、 sqrt を安全にした（負の数を渡すと nil を返す）関数 safeSqrt: Double -> Double? があるものとして考えて良い。
 
 */

func safeSqrt (_ n: Double) -> Double? {
    
    guard n >= 0 else { return nil }
    
    return sqrt(n)
    
}

let x: Double? = 2

let result3 = x.map {
    return safeSqrt($0)
}

// ↑ は、適用するとこうゆうこと

let result3tmp = x.map {_ in
    return Optional(1.41)    // いつもやってる、 Int($0) と同じ。 Int? 型の返り値を返すクロージャ。
}

// その結果、 2 が Optional(1.41) に変換される。そしてそれが [新しい箱] に格納されるので、
// 返り値は Double?? となる。はぁ、疲れた。


// でも心配しないで。この流れをもっとスッキリ書くならこう。てかふつうこう書く。

let result3neo: Double?? = x.map(safeSqrt) // Optional(nil)

// print(result3neo!!)   // 余談だけど、強制アンラップは、 ! を 1個だけ開示する。から、2個開けるには !! という書き方になるｗ


// ただし実はさらにもっとスッキリ書く方法があった...
let result3neoneo: Double?    = x.flatMap{ safeSqrt($0) }

// もしくは
let result3neoneoneo: Double? = x.flatMap(safeSqrt)


/*
 
 Optional<T> の flatMap は、
 
 クロージャ式内の演算結果(クロージャの返り値 = mapping処理の中身)が オプショナル型 だった場合、
 それを非オプショナル型(= flat )にして返す
 
 という挙動が付加された mapである。
 (最後の、"適用した結果を [新しい箱] に詰めて返す" という操作は map と同じ)
 
 */


// ここで、 [ map と flatMap、 '結果が同じ場合' と '結果が違う場合'] をそれぞれ見てみましょう


// 結果が【同じ】場合

let fuga: Int? = 3

let res1: Int? = fuga.map    { $0 * $0 }    // Optional(9)
let res2: Int? = fuga.flatMap{ $0 * $0 }    // Optional(9)


// 結果が【異なる】場合

let hoge: String? = "42"

let res3: Int?? = hoge.map    { Int($0) }   // Optional(Optional(42))
let res4: Int?  = hoge.flatMap{ Int($0) }   // Optional(42)


/*
 
 以上より、次の結論が導かれる:
 
 map / flatMapに渡したクロージャが...
 - 返り値が 【非オプショナル型】 の演算の場合 → どちらを使っても同じ            Ex) $0 * $0
 - 返り値が 【オプショナル型　】 の演算の場合 → map / flatMap で、結果が異なる Ex) Int($0)
 
 
 なので、どっちを使えばいいかは、 クロージャの返り値が オプショナル / 非オプショナル か？ を確認して決めればよい
 
 */



// Optional chaining は、 flatMap の一部のケースを簡単に書くためのシンタックスシュガーと心得よ
// Optional chaining でできることは、flatMap でも全部できる

// (いわく) Optional の flatMapは、 "失敗するかもしれない【連続した処理】を書く場合" に役に立つ(らしい)


/*
 
 複数の箱の中身を使う
 
 4.
 
 a: Int? と b: Int? があるとき、 a + b を計算したい。ただし、 a か b が nil の場合には nil を得たい。
 
 */


let c: Int? = 3
let d: Int? = 2

let result4: Int? = c.flatMap { (int1: Int) in
    
    d.flatMap { (int2: Int) in
        return int1 + int2
    }
    
}


/*
 
 アプリカティブスタイル  http://qiita.com/koher/items/95583f58a443f6a33c28
 
 flatMap の入れ子は複雑すぎる！
 そこでアプリカティブスタイルですよ。よりシンプルに書けます
 
 */


// let result4neo: Int? = (+) <%> a <*> b



/*
 
 - Monad
 
 モナドというのは、モナドでくるまれた中の世界ではモナドを気にせずに処理が記述でき、
 外からみるとモナドでくるまれているという、外と中を分離するための仕組みです。
 
 Optional binding （ if let ... ）や Forced Unwrapping （ ! ）を使って Optional の中身を取り出すのは、分離されている箱の中の世界と外の世界をつなげてしまう行為です。
 map や flatMap を使うことで、中と外を分離したまま中の世界に対する処理を記述することができるのです。
 
 */


/*
 enum Optional<T> {
 case some(T)
 case none
 }
 
 let f = Optional.some(12)
 
 switch f {
 case let ff:
 print(ff)
 }
 */



/*
 
 5. a: Int? があるとき、 a の値を print で表示したい。ただし、 a が nil の場合には何も表示したくない。
 
 */

let e: Int? = nil

// e.map { print($0) }  // 42 (Optional(42)ではないよ、気づいてる？)
// e が nil なら、 printは実行されない、から何も表示されない。
// 返り値は、 Optional<Void> (Void?)


// Array にある forEach は、 map の戻り値がないバージョン

// [4].forEach { print($0) }
