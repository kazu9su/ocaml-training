(* 目的: nから1までのリストを作る *)
(* enumerate : int -> int list *)
let rec enumerate n = if n = 0 then [] else n :: enumerate (n - 1)

(* 目的: 1 から受け取った自然数までの合計を求める *)
(* one_to_n : int -> int *)
let one_to_n =
    fun n -> List.fold_right (+) (enumerate n) 0

let test1 = one_to_n 4 = 10
let test2 = one_to_n 1 = 1
let test3 = one_to_n 2 = 3

(* 目的: nの階乗を求める *)
(* fac : int -> int *)
let fac =
    fun n -> List.fold_right ( * ) (enumerate n) 1

let test4 = fac 2 = 2
let test5 = fac 3 = 6
let test6 = fac 4 = 24
