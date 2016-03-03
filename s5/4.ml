(* 目的 : a,b,c を与えられたら、判別式の値を返す *)
(* hanbetsushiki : float -> float -> float -> float *)
let hanbetsushiki a b c =
    b ** 2.0 -. 4.0 *. a *. c

let test1 = hanbetsushiki 1.0 1.0 1.0 = -3.0
let test2 = hanbetsushiki 1.0 2.0 2.0 = -4.0
