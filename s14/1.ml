let is_even n = (n mod 2 = 0)

(* 目的: 整数のリストを受け取ったら、その中の偶数の要素のみを含むリストを返す*)
(* even : int list -> int list *)
let even lst = List.filter is_even lst

let test1 = even [] = []
let test2 = even [1] = []
let test3 = even [1; 2] = [2]
