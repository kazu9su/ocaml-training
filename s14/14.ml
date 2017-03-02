(* 文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す *)
(* string list -> string *)
let concat lst = List.fold_right (^) lst ""

let test1 = concat ["A"; "B"; "C";] = "ABC"
