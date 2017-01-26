(* 文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す *)
(* string list -> string *)
let add_str first rest_result = first ^ rest_result
let concat lst = List.fold_right add_str lst ""

let test1 = concat ["A"; "B"; "C";] = "ABC"
