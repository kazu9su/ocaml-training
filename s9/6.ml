(* 文字列のリストを受け取ったら、その中の要素を前から順に全部くっつけた文字列を返す *)
(* concat : string list -> string *)
let rec concat lst = match lst with
    [] -> ""
    | first :: rest -> first ^ concat rest

let test1 = concat [] = ""
let test2 = concat ["春"; "夏"; "秋"; "冬"] = "春夏秋冬"
