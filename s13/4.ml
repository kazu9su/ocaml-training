(* 目的: 関数をふたつ受け取ったら、そのふたつの関数を合成した関数を返す *)
(* ('a -> 'b) -> ('c -> 'a) -> 'c -> 'b *)
let compose f1 f2 =
    let g x = f1 (f2 x)
    in g

let time2 x = x * 2
let add3 x = x + 3

let test1 = compose time2 add3 4 = 14
