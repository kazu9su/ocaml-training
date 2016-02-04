(* 目的:鶴の数 x, 亀の数 y を与えられたら、足の数の合計を返す *)
(* tsuruikame_no_ashi : int -> int *)
let tsurukame_no_ashi x y = x * 2 + y * 4

(* テスト *)
let test1 = tsurukame_no_ashi 1 1 = 6
let test2 = tsurukame_no_ashi 2 2 = 12
let test3 = tsurukame_no_ashi 3 4 = 22
