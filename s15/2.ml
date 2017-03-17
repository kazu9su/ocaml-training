(* 1. n = 0 ならば m が最大公約数
 * 2. そうでないなら n と 「m を n で割った余り」の最大公約数が求める最大公約数 *)
(* gcd: int -> int -> int *)
let rec gcd m n =
    if n = 0 then m
    else gcd n (m mod n)

let test1 = gcd 5 0 = 5
let test2 = gcd 10 5 = 5
let test3 = gcd 10 5 = 5
let test4 = gcd 12 15 = 3
