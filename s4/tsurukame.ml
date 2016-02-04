(* 目的:鶴と亀の数の合計 x, 足の数の合計 y を与えられたら、鶴の数を返す *)
(* tsurukame : int -> int *)
let tsurukame x y = (4 * x - y) / 2

(* テスト *)
let test1 = tsurukame 1 2 = 1
let test2 = tsurukame 1 4 = 0
let test3 = tsurukame 3 10 = 1

